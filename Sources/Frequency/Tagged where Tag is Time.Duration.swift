public import Quantity

extension Tagged::Tagged where Tag == Time.Duration, Underlying: FloatingPoint {
    /// How often something repeats that takes this long once: a frequency.
    @inlinable
    public static func / (lhs: Underlying, rhs: Self) -> Frequency.Value<Underlying> {
        Frequency.hertz(lhs / rhs.underlying)
    }
}
