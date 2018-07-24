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

  def test_add_person_to_queue()
    @busstop.add_to_queue(@passenger1)
    assert_equal(1, @busstop.queue_count)
  end




end
