class Knight 
	def initialize(x, y, color)
		@x = x
		@y = y 
		@color = color
	end

	def can_move?(final_x, final_y)

		if @x == (final_x + 2) && @y === (final_y + 1) || @y === (final_y - 1)
			true
		elsif @y == (final_y + 2) && @x == (final_x + 1) || @x == (final_x - 1) 
			true
		else
			false	
		end	
	end
end
