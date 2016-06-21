class Car
	def initialize(sound, capacity)
		@sound = sound
		@capacity = capacity
		@places_traveled = []
	end
		
	def noise
		puts @sound
	end	

	def visited(cities)
		@places_traveled.push(cities)
	end
	
	def places_traveled
		puts "Places traveled: #{@places_traveled}"
	end	
end		