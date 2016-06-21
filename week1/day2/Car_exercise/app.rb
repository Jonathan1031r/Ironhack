require_relative("lib/car.rb")

first_car = Car.new("Broom", 4)
first_car.noise

second_car = Car.new("BROOOOOOM", 2)
second_car.noise

first_car.visited("Miami")
first_car.visited("Orlando")

first_car.places_traveled