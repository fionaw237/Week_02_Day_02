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

  def members()
    copy = []
    return copy.replace(@members)
  end

  def member_count()
    return @members.count()
  end

  def add_member(new_member)
    @members << new_member
  end

end
