require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")

class BearTest < MiniTest::Test

  def setup()

    @bear = Bear.new("Sparky", "brown bear")

  end

  def test_has_name()
    assert_equal("Sparky", @bear.name)
  end

  def test_has_type()
    assert_equal("brown bear", @bear.type)
  end

end
