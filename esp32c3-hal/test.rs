#![feature(prelude_import)]
//! GPIO interrupt
//!
//! This prints "Interrupt" when the boot button is pressed.
//! It also blinks an LED like the blinky example.
#![no_std]
#![no_main]
#[prelude_import]
use core::prelude::rust_2021::*;
#[macro_use]
extern crate core;
#[macro_use]
extern crate compiler_builtins;
use core::cell::RefCell;
use bare_metal::Mutex;
use esp32c3_hal::{
    clock::ClockControl,
    gpio::{Gpio9, IO},
    gpio_types::{Event, Input, Pin, PullDown},
    interrupt,
    pac::{self, Peripherals},
    prelude::*,
    timer::TimerGroup,
    Delay, RtcCntl,
};
use panic_halt as _;
use riscv_rt::entry;
static mut BUTTON: Mutex<RefCell<Option<Gpio9<Input<PullDown>>>>> = Mutex::new(RefCell::new(None));
#[export_name = "main"]
pub fn __risc_v_rt__main() -> ! {
    let peripherals = Peripherals::take().unwrap();
    let system = peripherals.SYSTEM.split();
    let clocks = ClockControl::boot_defaults(system.clock_control).freeze();
    let mut rtc_cntl = RtcCntl::new(peripherals.RTC_CNTL);
    let timer_group0 = TimerGroup::new(peripherals.TIMG0, &clocks);
    let mut wdt0 = timer_group0.wdt;
    let timer_group1 = TimerGroup::new(peripherals.TIMG1, &clocks);
    let mut wdt1 = timer_group1.wdt;
    rtc_cntl.set_super_wdt_enable(false);
    rtc_cntl.set_wdt_enable(false);
    wdt0.disable();
    wdt1.disable();
    let io = IO::new(peripherals.GPIO, peripherals.IO_MUX);
    let mut led = io.pins.gpio5.into_push_pull_output();
    let mut button = io.pins.gpio9.into_pull_down_input();
    button.listen(Event::FallingEdge);
    riscv::interrupt::free(|_cs| unsafe {
        BUTTON.get_mut().replace(Some(button));
    });
    interrupt::enable(pac::Interrupt::GPIO, interrupt::Priority::Priority3).unwrap();
    unsafe {
        riscv::interrupt::enable();
    }
    let mut delay = Delay::new(&clocks);
    loop {
        led.toggle().unwrap();
        delay.delay_ms(500u32);
    }
}
#[link_section = ".rwtext"]
#[inline(never)]
#[doc(hidden)]
#[export_name = "GPIO"]
pub unsafe extern "C" fn __esp_hal_internal_GPIO_trampoline(
    context: &mut crate::interrupt::TrapFrame,
) {
    __esp_hal_internal_GPIO()
}
#[inline(always)]
#[link_section = ".rwtext"]
fn __esp_hal_internal_GPIO() {
    riscv::interrupt::free(|cs| unsafe {
        let mut button = BUTTON.borrow(*cs).borrow_mut();
        let button = button.as_mut().unwrap();
        {
            use core::fmt::Write;
            ::esp_println::Printer
                .write_fmt(::core::fmt::Arguments::new_v1(&["GPIO interrupt\n"], &[]))
                .ok();
        };
        button.clear_interrupt();
    });
    {
        self::pac::Interrupt::GPIO;
    }
}
