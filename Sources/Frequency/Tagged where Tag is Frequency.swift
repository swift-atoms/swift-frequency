public import Quantity

extension Tagged::Tagged where Tag == Frequency, Underlying: FloatingPoint {
    /// How long one repeat takes: a duration.
    @inlinable
    public static func / (lhs: Underlying, rhs: Self) -> Time.Duration.Value<Underlying> {
        Time.Duration.seconds(lhs / rhs.underlying)
    }

    /// This frequency as an angular frequency, times two pi.
    @inlinable
    public var angular: Frequency.Angular.Value<Underlying> {
        Frequency.Angular.amount(underlying * 2 * Underlying.pi)
    }
}
