puts "What would you like as your side?"

taste = gets.chomp.downcase

def taste(food)
	if food == "bacon"
		puts "Yummy!! Bacon!!"
	elsif food == "spinach"	
		puts "Urgh..."
	else
		puts "Can I have some bacon on the side?"
	end
end			