class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish_to_river(fish)
    @fish.concat(fish)
  end

  def remove_a_fish()
    @fish.pop()
  end

  def fish_count()
    return @fish.count()
  end

  def fish()
    copy = []
    copy.replace(@fish)
  end


end
