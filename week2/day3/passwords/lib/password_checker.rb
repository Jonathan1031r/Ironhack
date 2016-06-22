class PasswordChecker
	attr_accessor :email, :password 
	def initialize(email, password)
	@email = email
	@password = password
end

	def pass_length
		if @password.length >= 7
			true
		else 
			false
		end		
	end

	def pass_symbol
		pass_chars = @password.split(//)

		symbol = false
		numbers = false
		letters = false

		pass_chars.each do |chars| 
			num = chars.ord 
			if num.between?(33,47)||num.between?(58,64)||num.between?(91,96)||num.between?(123,126)
				symbol = true
			elsif num.between?(97,122)||num.between?(65,90)
				letters = true
			elsif num.between?(48,57)
				numbers = true
			end		
		end

		if symbol == true && numbers == true && letters == true
			true
		else
			false
		end
	end

	def pass_case
		pass_chars = @password.split(//)

		lower = false
		upper = false

		pass_chars.each do |chars| 
			num = chars.ord 
				if num.between?(97,122)
					lower = true
				elsif num.between?(65,90)
					upper = true
				end
			end
				if upper == true && lower == true
					true
				else
					false
				end
	end

	def pass_name
			pass_array = @email.split('@')

			if pass_array.include?(@password)
				false
			else
				true
			end
	end
end	