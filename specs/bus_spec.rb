require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")

class BusTest < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
    @passenger1 = Person.new("Davina", 28)
  end



  def test_drive
    assert_equal("Brum brum", @bus.drive())
  end

  def test_add_passenger
    @bus.add_passenger(@passenger1)
    assert_equal(1, @bus.passengers().count())
  end

  def test_remove_passenger
    @bus.add_passenger(@passenger1)
    @bus.remove_passenger(@passenger1)
    assert_equal(0, @bus.passengers().count())

  end

  def test_remove_all_passengers
    @bus.add_passenger(@passenger1)
    @bus.add_passenger(@passenger1)
    @bus.remove_all_passengers()
    assert_equal(0, @bus.passengers().count())
  end

  def test_route
    @bus.route = "Leith"
    assert_equal("Leith", @bus.route())
  end

  def test_number
    @bus.number = 150
    assert_equal(150, @bus.number())
  end

end
