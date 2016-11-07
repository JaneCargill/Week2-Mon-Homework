require('minitest/autorun')
require('minitest/rg')
require_relative('car')
require_relative('person')

class TestCar < Minitest::Test

def setup
@car = Car.new("blue", "saab", 100, 0, @driver)
@person = Person.new('Jim', 37)
@driver = Person.new('Judi', 25)
end

def test_colour_of_car
  assert_equal("blue", @car.colour_of_car)
end

def test_model_of_car
  assert_equal("saab", @car.model_of_car)
end

def test_fuel_of_car
  assert_equal(100, @car.fuel_of_car)
end

def test_speed_of_car
  assert_equal(0, @car.speed_of_car)
end

def test_accelerate
  @car.accelerate
  assert_equal(10, @car.speed_of_car)
  assert_equal(95, @car.fuel_of_car)
end

def test_brake
  @car.brake
  assert_equal(0, @car.speed_of_car)
end

def test_pick_up_passengers
  @car.pick_up_passengers(@person)
  assert_equal('Jim', @person.name)
end

def test_number_of_passengers
  assert_equal(1, @car.number_of_passengers(@person))
end

end