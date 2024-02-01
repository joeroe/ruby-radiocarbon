class TestC14Date < Minitest::Test

  def setup
    @c14_date = Radiocarbon::C14Date.new(1000, 10)
  end

  def test_dnorm
    assert_equal @c14_date.dnorm(1000).round(8), 0.03989423
  end

  def test_dnorm_with_add_error
    assert_equal @c14_date.dnorm(1000, 10).round(8), 0.02820948
  end

  def test_calibrate_returns_cal_date
    assert_kind_of Radiocarbon::CalDate, @c14_date.calibrate
  end

end
