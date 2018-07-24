require("minitest/autorun")
require("minitest/rg")
require_relative("../fish")

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Freddie")
  end

  def test_has_name()
    assert_equal("Freddie", @fish.name())
  end

end
