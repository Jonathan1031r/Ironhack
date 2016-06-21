class Queen
	def initialize(x, y, color)
		@x = x
		@y = y 
		@color = color
	end

	def can_move?(final_x, final_y)
		x_value = @x - final_x
		y_value = @y - final_y

		if (x_value.abs == y_value.abs) || (@x == final_x || @y == final_y)
			true			
		else	
			false
		end		
	end
end	