class Car
	def engine_sounds
		puts "puhpuhpuhpuh"
	end

	def number_wheels
		puts 4
	end	
end	

class Airplane
	def engine_sounds
		puts "swoooosh"
	end

	def number_wheels
		puts 12
	end
end

class Motorcycle
	def engine_sounds
		puts "Vooooom"
	end
	
	def number_wheels
		puts 2	
	end	
end

class TotalSounds
	def initialize
		@total_sounds = []
	end
	def sounds(sounds)
		@total_sounds.push(sounds)
	end
end	

class CountTheWheels
	def initialize 
		@vehicles = []
	end
	def add_vehicle(the_vehicle)
		@vehicles.push(the_vehicle)
		sum = @vehicles.reduce(0){|a,b| a + b}
		puts sum
	end
end

car = Car.new
# airplaine = Airplane.new
# motorcycle = Motorcycle.new

blah = CountTheWheels.new

blah.add_vehicle(car)
# blah.add_vehicle(motorcycle)
# blah.add_vehicle(airplaine)

# total_wheels.wheels(car.number_wheels)











