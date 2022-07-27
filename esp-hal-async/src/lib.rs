//! `no_std` HAL implementations for the peripherals which are common among
//! Espressif devices. Implements a number of the traits defined by
//! [embedded-hal].
//!
//! This crate should not be used directly; you should use one of the
//! device-specific HAL crates instead:
//!
//! - [esp32-hal]
//! - [esp32c3-hal]
//! - [esp32s2-hal]
//! - [esp32s3-hal]
//!
//! [embedded-hal]: https://docs.rs/embedded-hal/latest/embedded_hal/
//! [esp32-hal]: https://github.com/esp-rs/esp-hal/tree/main/esp32-hal
//! [esp32c3-hal]: https://github.com/esp-rs/esp-hal/tree/main/esp32c3-hal
//! [esp32s2-hal]: https://github.com/esp-rs/esp-hal/tree/main/esp32s2-hal
//! [esp32s3-hal]: https://github.com/esp-rs/esp-hal/tree/main/esp32s3-hal

#![no_std]

pub mod embassy;

#[cfg(feature = "esp32")]
pub use esp32_hal::*;
#[cfg(feature = "esp32c3")]
pub use esp32c3_hal::*;
#[cfg(feature = "esp32s2")]
pub use esp32s2_hal::*;
#[cfg(feature = "esp32s3")]
pub use esp32s3_hal::*;
#[cfg(any(feature = "esp32c3"))]
pub use riscv_rt::entry;
#[cfg(any(feature = "esp32s3"))]
pub use xtensa_lx_rt::entry;
