class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

  def queue_count()
    return @queue.count()
  end

  def add_to_queue(person)
    @queue << person
  end

  def queue()
    copy = []
    copy.replace(@queue)
  end

  def clear_queue()
    @queue.clear()
  end

end
