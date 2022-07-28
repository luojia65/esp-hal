use core::{
    ops::{Deref, DerefMut},
    task::{Context, Poll},
};

use embassy::waitqueue::AtomicWaker;
use embedded_hal_async::digital::Wait;
use esp_hal_common::Event;

use crate::{pac, prelude::*};

#[allow(clippy::declare_interior_mutable_const)]
const NEW_AW: AtomicWaker = AtomicWaker::new();
#[cfg(feature = "esp32c3")]
const PIN_COUNT: usize = 26; // TODO cfg for each chip
static PIN_WAKERS: [AtomicWaker; PIN_COUNT] = [NEW_AW; PIN_COUNT];

pub struct AsyncPin<T>(pub T); // TODO remove pub and instead make the async hal emit these pins already
                               // wrapped

impl<T> Deref for AsyncPin<T> {
    type Target = T;

    fn deref(&self) -> &Self::Target {
        &self.0
    }
}

impl<T> DerefMut for AsyncPin<T> {
    fn deref_mut(&mut self) -> &mut Self::Target {
        &mut self.0
    }
}

impl<T> embedded_hal::digital::ErrorType for AsyncPin<T>
where
    T: embedded_hal::digital::ErrorType,
{
    type Error = T::Error;
}

impl<T> Wait for AsyncPin<T>
where
    T: esp_hal_common::gpio::Pin + embedded_hal::digital::ErrorType,
{
    type WaitForHighFuture<'a> = PinFuture<'a, T>
    where
        Self: 'a;

    fn wait_for_high<'a>(&'a mut self) -> Self::WaitForHighFuture<'a> {
        self.listen(Event::HighLevel);
        PinFuture::new(&mut self.0)
    }

    type WaitForLowFuture<'a> = PinFuture<'a, T>
    where
        Self: 'a;

    fn wait_for_low<'a>(&'a mut self) -> Self::WaitForLowFuture<'a> {
        self.listen(Event::LowLevel);
        PinFuture::new(&mut self.0)
    }

    type WaitForRisingEdgeFuture<'a> = PinFuture<'a, T>
    where
        Self: 'a;

    fn wait_for_rising_edge<'a>(&'a mut self) -> Self::WaitForRisingEdgeFuture<'a> {
        self.listen(Event::RisingEdge);
        PinFuture::new(&mut self.0)
    }

    type WaitForFallingEdgeFuture<'a> = PinFuture<'a, T>
    where
        Self: 'a;

    fn wait_for_falling_edge<'a>(&'a mut self) -> Self::WaitForFallingEdgeFuture<'a> {
        self.listen(Event::FallingEdge);
        PinFuture::new(&mut self.0)
    }

    type WaitForAnyEdgeFuture<'a> = PinFuture<'a, T>
    where
        Self: 'a;

    fn wait_for_any_edge<'a>(&'a mut self) -> Self::WaitForAnyEdgeFuture<'a> {
        self.listen(Event::AnyEdge);
        PinFuture::new(&mut self.0)
    }
}

pub struct PinFuture<'a, P> {
    pin: &'a P,
}

impl<'a, P> PinFuture<'a, P>
where
    P: esp_hal_common::gpio::Pin + embedded_hal::digital::ErrorType,
{
    pub fn new(pin: &'a P) -> Self {
        Self { pin }
    }
}

impl<'a, P> core::future::Future for PinFuture<'a, P>
where
    P: esp_hal_common::gpio::Pin + embedded_hal::digital::ErrorType,
{
    type Output = Result<(), P::Error>;

    fn poll(self: core::pin::Pin<&mut Self>, cx: &mut Context<'_>) -> Poll<Self::Output> {
        PIN_WAKERS[self.pin.number() as usize].register(cx.waker());

        // if pin is no longer listening its been triggered
        // therefore the future has resolved
        if !self.pin.is_listening() {
            Poll::Ready(Ok(()))
        } else {
            Poll::Pending
        }
    }
}

#[interrupt]
unsafe fn GPIO() {
    let gpio = crate::pac::GPIO::PTR;
    let mut intrs = (*gpio).pcpu_int.read().bits();
    (*gpio).status_w1tc.write(|w| w.bits(intrs)); // clear interrupts

    while intrs != 0 {
        let pin_nr = intrs.trailing_zeros();
        // TODO in the future we could conjure a pin and reuse code in esp-hal
        (*gpio).pin[pin_nr as usize].modify(|_, w| w.pin_int_ena().bits(0)); // stop listening, this is the signal that the future is ready
        PIN_WAKERS[pin_nr as usize].wake(); // wake task
        intrs &= !(1u32 << pin_nr);
    }
}
