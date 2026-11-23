public import Quantity

extension Tagged::Tagged where Tag == Frequency.Angular, Underlying: FloatingPoint {
    /// This angular frequency as a frequency, over two pi.
    @inlinable
    public var frequency: Frequency.Value<Underlying> {
        Frequency.hertz(underlying / (2 * Underlying.pi))
    }
}
