class Car

attr_reader :fuel_level, :speed
attr_accessor :colour, :model, :driver

  def initialize(colour, model, fuel_level, speed, driver)
    @colour = colour
    @model = model
    @fuel_level= fuel_level
    @speed = speed
    @driver = driver
  end

def colour_of_car()
  return @colour
end

def model_of_car()
  return @model
end

def fuel_of_car()
  return @fuel_level
end

def speed_of_car()
  return @speed
end

def accelerate()
 @speed += 10
 @fuel_level -= 5
end

def brake()
  if @speed !=0 
    @speed -= 10
  end
end

def pick_up_passengers(person)
return person.name
end

def number_of_passengers(person)
  passengers = []
  passengers << pick_up_passengers(person)
  return passengers.count
end

end

