class StringCalculator

	def add(numbers_string)
		sum = 0
		num = numbers_string.split(",")
		num.each{ |x| sum += x.to_i }
		return sum

		# if sum = (num + num)
		# 	return sum
		# else
		# 	return num

		# num.reduce(0){|a, b| a + b }
		# return sum
		# end
	end
end		