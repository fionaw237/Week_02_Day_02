require("minitest/autorun")
require("minitest/rg")
require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup()

    @bear = Bear.new("Sparky", "brown bear")

    @river = River.new("Tay")

    @fish1 = Fish.new("fish1")
    @fish2 = Fish.new("fish2")
    @fish3 = Fish.new("fish3")
    @fish4 = Fish.new("fish4")

    @fish = [@fish1, @fish2, @fish3, @fish4]

    @river.add_fish_to_river(@fish)

  end

  def test_can_create_bear()
    assert_equal(Bear, @bear.class())
  end

  def test_has_name()
    assert_equal("Sparky", @bear.name)
  end

  def test_has_type()
    assert_equal("brown bear", @bear.type)
  end

  def test_food_count()
    assert_equal(0, @bear.food_count())
  end

  def test_bear_roars()
    assert_equal("ROAR!", @bear.roar())
  end

  def test_takes_fish_from_river()
    @bear.take_fish_from_river(@river)
    assert_equal(1, @bear.food_count())
    assert_equal(3, @river.fish_count())
  end

end
