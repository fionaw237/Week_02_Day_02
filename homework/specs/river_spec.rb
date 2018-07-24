require("minitest/autorun")
require("minitest/rg")
require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup()

    @river = River.new("Tay")

    @fish1 = Fish.new("fish1")
    @fish2 = Fish.new("fish2")
    @fish3 = Fish.new("fish3")
    @fish4 = Fish.new("fish4")

    @fish = [@fish1, @fish2, @fish3, @fish4]

  end

  def test_has_name()
    assert_equal("Tay", @river.name())
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish)
    assert_equal(4, @river.fish.length())
  end

end
