require("minitest/autorun")
require("minitest/rg")
require_relative("../river")

class RiverTest < MiniTest::Test

  def setup()

    @river = River.new("Tay")

  end

  def test_has_name()
    assert_equal("Tay", @river.name())
  end

end
