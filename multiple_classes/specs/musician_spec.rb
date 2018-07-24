require("minitest/autorun")
require("minitest/rg")
require_relative("../musician")
require_relative("../instrument")

class MusicianTest < MiniTest::Test

  def setup
    @fender = Instrument.new("guitar")
    @roland = Instrument.new("piano")

    @musician_1 = Musician.new("Jimi Hendrix", @fender)
    @musician_2 = Musician.new("Freddie Mercury", @roland)
  end

  def test_has_name()
    assert_equal("Jimi Hendrix", @musician_1.name())
  end

  def test_has_instrument()
    assert_equal(@fender, @musician_1.instrument())
  end

  def test_can_play_song()
    assert_equal("I'm playing Hey Joe!", @musician_1.play_song("Hey Joe"))
  end

  def test_can_play_song_on_piano()
    assert_equal("Plink plonk...I'm playing Bohemian Rhapsody!", @musician_2.play_song("Bohemian Rhapsody"))
  end

end
