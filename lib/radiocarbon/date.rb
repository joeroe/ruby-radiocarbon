class Radiocarbon::Date

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

  def dnorm(year, add_error = 0)
    x = year
    mean = age
    sd = Math.sqrt(error**2 + add_error**2) # TODO: replace y with cal curve error
    (1 / (sd * Math.sqrt(2 * Math::PI))) * Math.exp(-0.5 * ((x - mean) / sd)**2)
  end

  def calibrate(curve = "IntCal20")
    Radiocarbon::CalDate.new(self, curve)
  end

end
    
