import Frequency
import Testing

enum `Frequency Tests` {}

extension `Frequency Tests` {
    @Suite struct `Frequency is a kind of quantity in hertz` {
        @Test func `Its dimension is time: -1`() {
            #expect(Frequency.dimension == Quantity.Dimension(time: -1))
        }

        @Test func `An amount given in hertz keeps its scalar`() {
            #expect(Frequency.hertz(2.5).underlying == 2.5)
        }
    }

    @Suite struct `A frequency is one over a duration` {
        @Test func `One over a duration, and back`() {
            let frequency = 1.0 / Time.Duration.seconds(0.5)
            #expect(frequency == Frequency.hertz(2.0))
            #expect(1.0 / frequency == Time.Duration.seconds(0.5))
        }

        @Test func `An angular frequency is two pi times a frequency, both ways`() {
            let angular = Frequency.hertz(2.0).angular
            #expect(angular == Frequency.Angular.amount(4 * Double.pi))
            #expect(angular.frequency == Frequency.hertz(2.0))
            #expect(Frequency.Angular.dimension == Frequency.dimension)
        }
    }
}
