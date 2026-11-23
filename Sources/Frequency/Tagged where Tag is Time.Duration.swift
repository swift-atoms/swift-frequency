public import Quantity

extension Tagged::Tagged where Tag == Time.Duration, Underlying: FloatingPoint {
    /// How often something repeats that takes this long once: a frequency, one over this duration.
    @inlinable
    public var frequency: Frequency.Value<Underlying> {
        Frequency.hertz(1 / underlying)
    }
}
