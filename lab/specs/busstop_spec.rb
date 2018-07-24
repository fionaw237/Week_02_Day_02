require("minitest/autorun")
require_relative("../bus")
require_relative("../person")
require_relative("../busstop")

class BusStopTest < MiniTest::Test

  def setup
    @busstop = BusStop.new("Ocean Terminal")
    @passenger1 = Person.new("Pim", 26)
    @passenger2 = Person.new("Fiona", 32)

  end

  def test_can_create_stop()
    assert_equal(BusStop, @busstop.class())
  end

  def test_queue_starts_empty()
    assert_equal(0, @busstop.queue_count())
  end

  def test_add_person_to_queue()
    @busstop.add_to_queue(@passenger1)
    assert_equal(1, @busstop.queue_count)
  end

  def test_clear_queue()
    @busstop.add_to_queue(@passenger1)
    @busstop.clear_queue()
    assert_equal(0, @busstop.queue_count())
  end




end
