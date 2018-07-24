class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return @stomach.length()
  end

  def roar()
    return "ROAR!"
  end

  def take_fish_from_river(river)
    fish = river.remove_a_fish()
    @stomach << fish
  end

end
