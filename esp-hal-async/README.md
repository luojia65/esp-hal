# esp-hal-async

[![Crates.io](https://img.shields.io/crates/v/esp-hal-async?labelColor=1C2C2E&color=C96329&logo=Rust&style=flat-square)](https://crates.io/crates/esp-hal-async)
[![docs.rs](https://img.shields.io/docsrs/esp-hal-async?labelColor=1C2C2E&color=C96329&logo=rust&style=flat-square)](https://docs.rs/esp-hal-async)

![Crates.io](https://img.shields.io/crates/l/esp-hal-async?labelColor=1C2C2E&style=flat-square)

[![Matrix](https://img.shields.io/matrix/esp-rs:matrix.org?label=join%20matrix&labelColor=1C2C2E&color=BEC5C9&logo=matrix&style=flat-square)](https://matrix.to/#/#esp-rs:matrix.org)

`no_std` async HAL implementations for the peripherals which are common among Espressif devices. Implements a number of the traits defined by [embedded-hal-async](https://github.com/rust-embedded/embedded-hal).

Please enable the following feature for your target chip:

* esp32c3 - `cargo run --example embassy_hello --target riscv32imc-unknown-none-elf --features esp32c3`
* esp32s3 - `cargo +esp run --example embassy_hello --target xtensa-esp32s3-none-elf --features esp32s3`

## [Documentation]

[documentation]: https://docs.rs/esp-hal-async/

## License

Licensed under either of:

* Apache License, Version 2.0 ([LICENSE-APACHE](../LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
* MIT license ([LICENSE-MIT](../LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted for inclusion in
the work by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without
any additional terms or conditions.
