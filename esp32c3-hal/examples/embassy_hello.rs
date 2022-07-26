#![no_std]
#![no_main]
#![feature(type_alias_impl_trait)]

use embassy::{
    self,
    executor::Executor,
    time::{Duration, Timer},
    util::Forever,
};
use esp32c3_hal::{clock::ClockControl, prelude::*, timer::TimerGroup, RtcCntl};
use panic_halt as _;

#[embassy::task]
async fn run_low() {
    loop {
        esp_println::println!("Hello world from embassy on an esp32c3!");
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

#[riscv_rt::entry]
fn main() -> ! {
    let p = esp32c3_hal::embassy::init();
    let system = p.SYSTEM.split();
    let clocks = ClockControl::boot_defaults(system.clock_control).freeze();

    // Disable the watchdog timers. For the ESP32-C3, this includes the Super WDT,
    // the RTC WDT, and the TIMG WDTs.
    let mut rtc_cntl = RtcCntl::new(p.RTC_CNTL);
    let timer_group0 = TimerGroup::new(p.TIMG0, &clocks);
    let mut wdt0 = timer_group0.wdt;
    let timer_group1 = TimerGroup::new(p.TIMG1, &clocks);
    let mut wdt1 = timer_group1.wdt;

    rtc_cntl.set_super_wdt_enable(false);
    rtc_cntl.set_wdt_enable(false);
    wdt0.disable();
    wdt1.disable();

    let executor = EXECUTOR_LOW.put(Executor::new());
    executor.run(|spawner| {
        spawner.spawn(run_low()).ok();
        spawner.spawn(run2()).ok();
    });
}
