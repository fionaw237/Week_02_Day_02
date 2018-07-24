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

  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_has_name()
    assert_equal("Tay", @river.name())
  end

  def test_fish_count()
    assert_equal(0, @river.fish_count())
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish)
    assert_equal(4, @river.fish_count())
  end

  def test_remove_a_fish()
    @river.add_fish_to_river(@fish)
    @river.remove_a_fish()
    assert_equal(3, @river.fish_count())
  end

end
