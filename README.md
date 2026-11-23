# swift-frequency

Use this package when a value is frequency: how often something repeats. Start from `Frequency`, a kind of quantity of swift-quantity, and make an amount with `Frequency.hertz(_:)`; it is a `Frequency.Value<Scalar>`, a `Tagged<Frequency, Scalar>`.

## Laws

- An amount of frequency is stored in hertz, the coherent SI unit, and is laid out exactly as its scalar.
- Its dimension is time: -1 (exponents of the base dimensions).
- Amounts of frequency add, scale and compare as swift-quantity gives every kind; they never mix with another kind, even one of the same dimension.
- `Frequency.Angular` is angular frequency: how fast a phase turns, in radians per second, of dimension time: -1.
- One over a duration is a frequency, and one over a frequency is a duration.
