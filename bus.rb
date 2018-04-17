class Bus
  attr_accessor(:number, :route, :passengers)

def initialize(number, route)
  @number = number
  @route = route
  @passengers = []
end

def drive
  return "Brum brum"
end

def add_passenger(name)
  @passengers.push(name)
end

def remove_passenger(name)
  @passengers.delete(name)
end

def remove_all_passengers
  @passengers = []
end

end
