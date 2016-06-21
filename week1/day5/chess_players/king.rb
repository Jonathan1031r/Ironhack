class King 
	def initialize(x, y, color)
		@x = x
		@y = y 
		@color = color
	end

	def can_move?(final_x, final_y)
		if @x == (final_x + 1) && @y == final_y
			true
		elsif @x == (final_x - 1) && @y == final_y
			true	
		elsif @x == final_x && @y == (final_y + 1)
			true
		elsif @x == final_x && @y == (final_y - 1)
			true		
		elsif @x == (final_x + 1) && @y == (final_y + 1)
			true
		elsif @x == (final_x - 1) && @y == (final_y - 1)
			true		
		else
			false
		end		
	end
end	