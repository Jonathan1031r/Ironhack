class Ford
	def engine
		puts "puhpuhpuhpuh"
	end

	def number_of_wheels
		puts 4
	end	
end

class Motorcycle
	def engine
		puts "Voooooom"
	end	

	def number_of_wheels
		puts 2
	end	
end

car_sounds = [Ford.new, Motorcycle.new]

car_sounds.each{ |x| puts x.engine, x.number_of_wheels }	