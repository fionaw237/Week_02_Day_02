require("minitest/autorun")
require("minitest/rg")
require_relative("../band")
require_relative("../musician")
require_relative("../instrument")

class BandTest < MiniTest::Test

  def setup
    roland = Instrument.new("piano")
    fender = Instrument.new("guitar")

    john = Musician.new("John Lennon", roland)
    george = Musician.new("George Harrison", fender)

    @beatles = Band.new("The Beatles", [john, george])
  end

  def test_has_name()
    assert_equal("The Beatles", @beatles.name)
  end

  def test_can_play_song()
    expected = ["Plink plonk...I'm playing Hey Jude!", "I'm playing Hey Jude!"]
    assert_equal(expected, @beatles.perform("Hey Jude"))
  end

end
