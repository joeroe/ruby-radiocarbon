class Radiocarbon::CalDate

  def initialize(c14_date, curve = "IntCal20")
    @c14_date = c14_date

    if Radiocarbon::CURVES.include?(curve.upcase)
      @curve = curve
    else
      @curve = nil # or raise error?
    end
  end

  def curve
    @curve
  end

  def curve=(value)
    @curve = value
  end

  def c14_date
    @c14_date
  end

  def c14_date=(value)
    @c14_date = value
  end

  def pdist(min_p = 1e-5)
    cd = curve_data

    p = cd[1].zip(cd[2]).map { |x, error|
      c14_date.dnorm(x, error)
    }

    if (min_p > 0)
      pdist = cd[0].zip(p).filter { |yr,p| p >= min_p }.transpose
      { yr: pdist[0], p: pdist[1] }
    else
      { yr: cd[0], p: p }
    end
  end

  private

  def curve_data
    require("radiocarbon/curves/#{curve.downcase}.rb")
    Radiocarbon.const_get(curve.upcase)
  end

end
