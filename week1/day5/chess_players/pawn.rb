class Pawn
	def initialize(x, y, color)
		@x = x
		@y = y 
		@color = color
	end

	def can_move?(final_x, final_y)
		if (@y == 7 || @y == 2) && @x == final_x
			if (final_y - 2 || final_y + 2) && @x == final_x
				true
			end	
		elsif @x == final_x && (@y == (final_y + 1) || @y == (final_y - 1))
		 	true		
		else
			false	
		end	
	end
end	