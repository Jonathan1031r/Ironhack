class Login 
	def front_door
		puts "Please log in to this awesome word processing program."

		puts ""
		puts "Enter Username:"
		username = gets.chomp.downcase

		puts ""
		puts "Enter Password:"
		password = gets.chomp.downcase

		if username == "jonathan" && password == "pizza"
			puts "Hello, #{username}!"
			puts ""
			puts "Enter some text to process!"
			puts ""
			text = gets.chomp.split(" ")
			counter = text.length
			puts "Your text has #{counter} words!"
		else
			puts ""
			puts "INCORRECT CREDENTIALS. Get out of here."	
		end	
	end
end	

login = Login.new
login.front_door

