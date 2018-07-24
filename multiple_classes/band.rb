class Band

  attr_reader :name

  def initialize(name, members)
    @name = name
    @members = members
  end

  def perform(song_title)
    performance = []
    for musician in @members
      performance << musician.play_song(song_title)
    end
    return performance
  end

end
