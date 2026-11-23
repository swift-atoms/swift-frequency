public import Quantity

extension Tagged::Tagged where Tag == Frequency, Underlying: FloatingPoint {
    /// How long one repeat takes: a duration, one over this frequency. It is a name, not `1 / frequency`, since an
    /// operator with a bare number on its left makes every division of numbers ambiguous where quantities are in scope.
    @inlinable
    public var period: Time.Duration.Value<Underlying> {
        Time.Duration.seconds(1 / underlying)
    }

    /// This frequency as an angular frequency, times two pi.
    @inlinable
    public var angular: Frequency.Angular.Value<Underlying> {
        Frequency.Angular.amount(underlying * 2 * Underlying.pi)
    }
}
