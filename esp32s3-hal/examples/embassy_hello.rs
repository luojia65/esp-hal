#![no_std]
#![no_main]
#![feature(type_alias_impl_trait)]
#![feature(asm_experimental_arch)]

use embassy::{
    self,
    executor::Executor,
    time::{Duration, Timer},
    util::Forever,
};
use esp32s3_hal::{clock::ClockControl, prelude::*, timer::TimerGroup, RtcCntl};
use panic_halt as _;

#[embassy::task]
async fn run_low() {
    loop {
        esp_println::println!("Hello world from embassy on an esp32s3!");
        Timer::after(Duration::from_millis(1000)).await;
    }
}

#[embassy::task]
async fn run2() {
    loop {
        esp_println::println!("Bing!");
        Timer::after(Duration::from_millis(3000)).await;
    }
}

static EXECUTOR_LOW: Forever<Executor> = Forever::new();

#[xtensa_lx_rt::entry]
fn main() -> ! {
    let p = esp32s3_hal::embassy::init();
    let system = p.SYSTEM.split();
    let clocks = ClockControl::boot_defaults(system.clock_control).freeze();

    let timer_group0 = TimerGroup::new(p.TIMG0, &clocks);
    let mut wdt = timer_group0.wdt;
    let mut rtc_cntl = RtcCntl::new(p.RTC_CNTL);

    // Disable MWDT and RWDT (Watchdog) flash boot protection
    wdt.disable();
    rtc_cntl.set_wdt_global_enable(false);

    let executor = EXECUTOR_LOW.put(Executor::new());
    executor.run(|spawner| {
        spawner.spawn(run_low()).ok();
        spawner.spawn(run2()).ok();
    })
}


struct CriticalSection;
critical_section::custom_impl!(CriticalSection);

static mut VPS: u32 = 0;
// TODO this is **NOT** multicore safe
unsafe impl critical_section::Impl for CriticalSection {
    unsafe fn acquire() -> u8 {
        core::arch::asm!("rsil {0}, 15", out(reg) VPS);
        0
    }

    unsafe fn release(_token: u8) {
        core::arch::asm!("wsr.ps {0}", in(reg) VPS)
    }
}