require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")
require_relative("../bus.rb")

class PersonTest < MiniTest::Test

  def setup
   @Person = Person.new("Euan", 25)

  end
end
