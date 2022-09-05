//! This shows how to write text to serial0.
//! You can see the output with `espflash` if you provide the `--monitor` option

#![no_std]
#![no_main]

use core::{fmt::Write, time::Duration};

use esp32_hal::{
    clock::ClockControl,
    pac::Peripherals,
    prelude::*,
    timer::TimerGroup,
    Rtc,
    Serial,
};
use esp_backtrace as _;
use nb::block;
use xtensa_lx_rt::entry;

use esp_println::{println, print};

#[entry]
fn main() -> ! {
    let peripherals = Peripherals::take().unwrap();
    let system = peripherals.DPORT.split();
    let clocks = ClockControl::boot_defaults(system.clock_control).freeze();

    let timer_group0 = TimerGroup::new(peripherals.TIMG0, &clocks);
    let mut timer0 = timer_group0.timer0;
    let mut wdt = timer_group0.wdt;
    let mut serial0 = Serial::new(peripherals.UART0);
    let mut rtc = Rtc::new(peripherals.RTC_CNTL);

    // Disable MWDT and RWDT (Watchdog) flash boot protection
    wdt.disable();
    rtc.rwdt.disable();

    timer0.start(1u64.secs());
    
    println!("Align<u128>: {}", core::mem::align_of::<u128>());
    println!("Size<u128>: {}", core::mem::size_of::<u128>());


    println!("{}", u128::MAX);

    test(); 

    test2();

    loop {
        writeln!(serial0, "Hello world!").unwrap();
        block!(timer0.wait()).unwrap();
    }
}


#[inline(never)]
fn test() {
    let x = core::time::Duration::from_secs(10000);
    let millis = x.as_millis();
    println!("{millis}");
}

#[inline(never)]
fn test2() {
    let res = a(u64::MAX as u128, 12);
    assert_eq!(res, 34028236692093846333424739891580135027);
    println!("{res}");
}


#[inline(never)]
pub fn print_u128(x: u128) {
    for byte in x.to_be_bytes() {
        print!("{:08b}", byte);
    }
    println!("");
}

#[inline(never)]
fn a(i: u128, dummy: u32) -> u128 {
    b(i) + dummy as u128
}

#[inline(never)]
fn b(i: u128) -> u128 {
    let (i, c) = c(i, 10);
    i as u128 * c 
}

#[inline(never)]
fn c(i: u128, d: u128) -> (u32, u128) {
    ((i / d) as u32, i)
}
