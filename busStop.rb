class BusStop
  attr_accessor(:name, :queue, :people_on_bus)
  def initialize(name, queue)
    @name = name
    @queue = queue
    @people_on_bus = 0
  end

  def add_person_to_queue(name)
    @queue.push(name)
  end

  def put_on_bus
    @people_on_bus += @queue.count()
  end
end
