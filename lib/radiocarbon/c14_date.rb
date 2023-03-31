class Radiocarbon::C14Date

  def initialize(age, error)
    @age = age
    @error = error
  end

  def age
    @age
  end

  def age=(value)
    @age = value
  end

  def error
    @error
  end

  def error=(value)
    @error = value
  end

  def dnorm(x, add_error = 0)
    sd = Math.sqrt(error**2 + add_error**2)
    (1 / (sd * Math.sqrt(2 * Math::PI))) * Math.exp(-0.5 * ((x - age) / sd)**2)
  end

  def calibrate(curve = "IntCal20")
    Radiocarbon::CalDate.new(self, curve)
  end

end
    
