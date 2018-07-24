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

  def test_can_get_members()
    assert_equal(2, @beatles.members().count())
  end

  def test_can_manipulate_original_array()
    members = @beatles.members()
    members.push("A nasty piece of code")
    assert_equal(2, @beatles.members().count())
  end

  def test_add_member()

    guitar = Instrument.new("Guitar")
    paul = Musician.new("Paul McCartney", guitar)
    @beatles.add_member(paul)
    assert_equal(3, @beatles.member_count)
  end
end
