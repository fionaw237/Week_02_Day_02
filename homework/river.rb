class River

  attr_reader :name, :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def add_fish_to_river(fish)
    @fish.concat(fish)
  end


end
