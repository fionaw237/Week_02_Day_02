require("minitest/autorun")
require_relative("../bus")
require_relative("../person")
require_relative("../busstop")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Pim", 26)
    @passenger2 = Person.new("Fiona", 32)

    @busstop = BusStop.new("bus stop")
    @busstop.add_passenger(@passenger1)
    @busstop.add_passenger(@passenger2)
  end

  def test_drive()
    assert_equal("Brum Brum", @bus.drive("Brum Brum"))
  end

  def test_passenger_count()
    assert_equal(0, @bus.passenger_count())
  end

  def test_pick_up()
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.passenger_count)
  end

  def test_drop_off()
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.drop_off(@passenger2)
    assert_equal(1, @bus.passenger_count)
  end

  def test_empty()
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty()
    assert_equal(0, @bus.passenger_count)
  end

  def test_pick_up_from_stop()
    @bus.pick_up_from_stop
  end

end
