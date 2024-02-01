##
# Represents an uncalibrated radiocarbon date.
class Radiocarbon::C14Date

  # Conventional radiocarbon age (CRA)
  attr_accessor :age

  # Measurement error
  attr_accessor :error

  def initialize(age, error)
    @age = age
    @error = error
  end

  # Normal probability density function
  #
  # @param x [Integer] Uncalibrated age
  # @param x [Double] Additional error term
  #
  # @return [Double] Probability at x
  def dnorm(x, add_error = 0)
    sd = Math.sqrt(error**2 + add_error**2)
    (1 / (sd * Math.sqrt(2 * Math::PI))) * Math.exp(-0.5 * ((x - age) / sd)**2)
  end

  # Calibrates a radiocarbon date
  #
  # @param curve [String] Name of the calibration curve to use. Must be present
  #   in {Radiocarbon::CURVES}.
  #
  # @return [CalDate] A calibrated radiocarbon date
  def calibrate(curve = "IntCal20")
    Radiocarbon::CalDate.new(self, curve)
  end

end
    
