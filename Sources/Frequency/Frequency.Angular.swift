extension Frequency {
    /// Angular frequency: how fast a phase turns, stored in radians per second.
    public enum Angular {}
}

extension Frequency.Angular: Quantity.Kind {
    public static var dimension: Quantity.Dimension { Quantity.Dimension(time: -1) }
}

extension Frequency.Angular {
    /// An amount of this kind, its scalar in radians per second.
    public typealias Value<Scalar> = Tagged<Frequency.Angular, Scalar>

}
