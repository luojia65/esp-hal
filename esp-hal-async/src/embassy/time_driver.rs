use core::{cell::Cell, ptr};

use critical_section::CriticalSection;
use embassy::{
    blocking_mutex::{raw::CriticalSectionRawMutex, CriticalSectionMutex as Mutex},
    time::driver::{AlarmHandle, Driver},
};

use crate::{
    pac,
    systimer::{Alarm, SystemTimer, Target},
};

const ALARM_COUNT: usize = 3;

pub struct AlarmState {
    pub timestamp: Cell<u64>,

    // This is really a Option<(fn(*mut ()), *mut ())>
    // but fn pointers aren't allowed in const yet
    pub callback: Cell<*const ()>,
    pub ctx: Cell<*mut ()>,
    pub allocated: Cell<bool>,
}

unsafe impl Send for AlarmState {}

impl AlarmState {
    pub const fn new() -> Self {
        Self {
            timestamp: Cell::new(u64::MAX),
            callback: Cell::new(ptr::null()),
            ctx: Cell::new(ptr::null_mut()),
            allocated: Cell::new(false),
        }
    }
}

pub struct EmbassyTimer {
    pub alarms: Mutex<[AlarmState; ALARM_COUNT]>,
    pub alarm0: Alarm<Target, 0>,
    pub alarm1: Alarm<Target, 1>,
    pub alarm2: Alarm<Target, 2>,
}

const ALARM_STATE_NONE: AlarmState = AlarmState::new();

embassy::time_driver_impl!(static DRIVER: EmbassyTimer = EmbassyTimer {
    alarms: Mutex::const_new(CriticalSectionRawMutex::new(), [ALARM_STATE_NONE; ALARM_COUNT]),
    alarm0: unsafe { Alarm::<_, 0>::conjure() },
    alarm1: unsafe { Alarm::<_, 1>::conjure() },
    alarm2: unsafe { Alarm::<_, 2>::conjure() },
});

impl EmbassyTimer {
    fn trigger_alarm(&self, n: usize, cs: CriticalSection) {
        let alarm = &self.alarms.borrow(cs)[n];
        // safety:
        // - we can ignore the possiblity of `f` being unset (null) because of the
        //   safety contract of `allocate_alarm`.
        // - other than that we only store valid function pointers into alarm.callback
        let f: fn(*mut ()) = unsafe { core::mem::transmute(alarm.callback.get()) };
        f(alarm.ctx.get());
    }

    fn on_interrupt(&self, id: u8) {
        match id {
            0 => self.alarm0.clear_interrupt(),
            1 => self.alarm1.clear_interrupt(),
            2 => self.alarm2.clear_interrupt(),
            _ => unreachable!(),
        };
        critical_section::with(|cs| {
            self.trigger_alarm(id as usize, cs);
        })
    }

    #[cfg(any(feature = "esp32c3", feature = "esp32s3"))]
    pub fn init() {
        use crate::{interrupt, interrupt::Priority, macros::interrupt};

        // TODO these priorities should probably be higher than 1...
        interrupt::enable(pac::Interrupt::SYSTIMER_TARGET0, Priority::Priority1).unwrap();
        interrupt::enable(pac::Interrupt::SYSTIMER_TARGET1, Priority::Priority1).unwrap();
        interrupt::enable(pac::Interrupt::SYSTIMER_TARGET2, Priority::Priority1).unwrap();

        #[interrupt]
        fn SYSTIMER_TARGET0() {
            DRIVER.on_interrupt(0);
        }
        #[interrupt]
        fn SYSTIMER_TARGET1() {
            DRIVER.on_interrupt(1);
        }
        #[interrupt]
        fn SYSTIMER_TARGET2() {
            DRIVER.on_interrupt(2);
        }
    }
}

impl Driver for EmbassyTimer {
    fn now(&self) -> u64 {
        SystemTimer::now()
    }

    unsafe fn allocate_alarm(&self) -> Option<AlarmHandle> {
        return critical_section::with(|_cs| {
            let alarms = self.alarms.borrow(_cs);
            for i in 0..ALARM_COUNT {
                let c = alarms.get_unchecked(i);
                if !c.allocated.get() {
                    // set alarm so it is not overwritten
                    c.allocated.set(true);
                    return Option::Some(AlarmHandle::new(i as u8));
                }
            }
            return Option::None;
        });
    }

    fn set_alarm_callback(
        &self,
        alarm: embassy::time::driver::AlarmHandle,
        callback: fn(*mut ()),
        ctx: *mut (),
    ) {
        critical_section::with(|cs| {
            let alarm = unsafe { self.alarms.borrow(cs).get_unchecked(alarm.id() as usize) };
            alarm.callback.set(callback as *const ());
            alarm.ctx.set(ctx);
        })
    }

    fn set_alarm(&self, alarm: embassy::time::driver::AlarmHandle, timestamp: u64) {
        critical_section::with(|cs| {
            let now = self.now();
            if timestamp < now {
                self.trigger_alarm(alarm.id() as usize, cs);
                return;
            }
            let alarm_state = unsafe { self.alarms.borrow(cs).get_unchecked(alarm.id() as usize) };
            alarm_state.timestamp.set(timestamp);
            match alarm.id() {
                0 => {
                    self.alarm0.set_target(timestamp);
                    self.alarm0.enable_interrupt();
                }
                1 => {
                    self.alarm1.set_target(timestamp);
                    self.alarm1.enable_interrupt();
                }
                2 => {
                    self.alarm2.set_target(timestamp);
                    self.alarm2.enable_interrupt();
                }
                _ => panic!(),
            }
        })
    }
}
