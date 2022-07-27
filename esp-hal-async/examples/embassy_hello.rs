#![no_std]
#![no_main]
#![feature(type_alias_impl_trait)]
#![cfg_attr(target_arch = "xtensa", feature(asm_experimental_arch))]

use embassy::{
    self,
    executor::Executor,
    time::{Duration, Timer},
    util::Forever,
};
use esp_hal_async::{clock::ClockControl, prelude::*, timer::TimerGroup, RtcCntl};
use esp_backtrace as _;

#[embassy::task]
async fn run1() {
    loop {
        esp_println::println!("Hello world from embassy using esp-hal-async!");
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

static EXECUTOR: Forever<Executor> = Forever::new();

#[esp_hal_async::entry]
fn main() -> ! {
    esp_println::println!("Init!");
    let p = esp_hal_async::embassy::init();
    let system = p.SYSTEM.split();
    let clocks = ClockControl::boot_defaults(system.clock_control).freeze();

    let mut rtc_cntl = RtcCntl::new(p.RTC_CNTL);
    let timer_group0 = TimerGroup::new(p.TIMG0, &clocks);
    let mut wdt0 = timer_group0.wdt;
    let timer_group1 = TimerGroup::new(p.TIMG1, &clocks);
    let mut wdt1 = timer_group1.wdt;

    #[cfg(feature = "esp32c3")]
    {
        rtc_cntl.set_super_wdt_enable(false);
        rtc_cntl.set_wdt_enable(false);
    }
    #[cfg(feature = "esp32s3")]
    {
        rtc_cntl.set_wdt_global_enable(false);
    }
    wdt0.disable();
    wdt1.disable();

    let executor = EXECUTOR.put(Executor::new());
    executor.run(|spawner| {
        spawner.spawn(run1()).ok();
        spawner.spawn(run2()).ok();
    });
}


#[cfg(feature = "esp32s3")]
mod cs {
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
}
