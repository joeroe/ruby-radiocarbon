class Radiocarbon::CalDate

  def initialize(date, curve = "IntCal20")
    puts date.age
    puts date.error
  end

end
