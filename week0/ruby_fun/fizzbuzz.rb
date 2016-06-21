x = 1
x.to_s
while x < 101
	y = x.to_s
	if y[0] == "1"
		puts "bang"
	elsif x % 15 == 0
		puts "FizzBuzz"
	elsif x % 3 == 0
		puts "Fizz"
	elsif x % 5 == 0 
		puts "Buzz"	
	else
		puts x 
	end		
x += 1
end
