def solve_cipher(input)

	x = input.split("")

	y = x.map do |num|

		if num == " "
			num.ord
		else	
			num.ord - 3
		end
	end

	z = y.map {|letter| letter.chr}

	print z
end

solve_cipher("p| uhdo qdph lv grqdog gxfn")