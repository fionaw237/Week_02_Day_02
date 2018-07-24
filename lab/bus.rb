class Bus

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive(sound)
    return sound
  end

  def passenger_count()
    return @passengers.count()
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty()
    @passengers.clear()
  end

  def pick_up_from_stop(stop)
    person = stop.get_passenger()
    pick_up(person)
    for person in stop.queue()
      pick_up(person)
    end

    stop.clear()
  end




end
