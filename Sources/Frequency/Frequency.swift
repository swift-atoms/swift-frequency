/// Frequency: how often something repeats, stored in hertz.
public enum Frequency {}

extension Frequency: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(time: -1) }
}

extension Frequency {
    /// An amount of frequency, its scalar in hertz.
    public typealias Value<Scalar> = Tagged<Frequency, Scalar>

    /// An amount of frequency given in hertz.
    @inlinable
    public static func hertz<Scalar>(_ scalar: Scalar) -> Value<Scalar> {
        amount(scalar)
    }
}
