class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
    #could alternatively pass fish in as a property (so you start with a river containing fish) and then remove add_fish_to_river method.
  end

  def fish_count()
    return @fish.count()
  end

  def add_fish_to_river(fish)
    @fish.concat(fish)
  end

  def remove_a_fish()
    return @fish.pop()
  end

end
