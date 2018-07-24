class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_count()
    return @queue.count()
  end

  def add_passenger(passenger)
    @queue << passenger
  end

  def get_in_bus
    @queue.empty()
  end


end
