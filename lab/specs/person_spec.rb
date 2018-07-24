require("minitest/autorun")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup()
    @passenger1 = Person.new("Pim", 26)
    @passenger2 = Person.new("Fiona", 32)
  end

end
