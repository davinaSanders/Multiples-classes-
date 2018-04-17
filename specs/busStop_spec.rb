require("minitest/autorun")
require("minitest/rg")
require_relative("../bus.rb")
require_relative("../person.rb")
require_relative("../busStop.rb")

class BusStopTest < MiniTest::Test

  def setup
    queue = []
    @busStop = BusStop.new("Edinburgh", queue)
    @passenger = Person.new("Davina", 28)
  end


  def test_add_person_to_queue
    @busStop.add_person_to_queue(@passenger)
    assert_equal(1, @busStop.queue().count())
  end

  def test_put_on_bus
    @busStop.add_person_to_queue(@passenger)
    @busStop.add_person_to_queue(@passenger)
    @busStop.add_person_to_queue(@passenger)
    assert_equal(3, @busStop.people_on_bus())
  end

  

end
