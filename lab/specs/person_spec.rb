require("minitest/autorun")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup()
    @passenger1 = Person.new("Pim", 26)
    @passenger2 = Person.new("Fiona", 32)
  end

  def test_can_create_person()
    assert_equal(Person, @passenger1.class())
  end

  def test_person_name()
    assert_equal("Pim", @passenger1.name())
  end

  def test_person_age()
    assert_equal(32, @passenger2.age())
  end

end
