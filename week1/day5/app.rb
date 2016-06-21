require_relative("chess_players/king.rb")
require_relative("chess_players/queen.rb")
require_relative("chess_players/bishop.rb")
require_relative("chess_players/knight.rb")
require_relative("chess_players/rook.rb")
require_relative("chess_players/pawn.rb")

#==============================================================

black_pawn_8 = Pawn.new( 8, 7, "black")

puts "Pawn Test"
p black_pawn_8.can_move?( 8, 6) == true
p black_pawn_8.can_move?( 8, 5) == true
p black_pawn_8.can_move?( 7, 7) == false

# black_rook_right = Rook.new(8, 8, "black")

# puts "Rook Tests"
# p black_rook_right.can_move?(8, 5) == true   # Vertical movement
# p black_rook_right.can_move?(4, 8) == true   # Horizontal movement
# p black_rook_right.can_move?(5, 5) == false  # Diagonal movement (invalid)
# p black_rook_right.can_move?(3, 6) == false  # Side diagonal movement? (invalid)

# black_knight_right = Knight.new( 7, 8, "black")

# puts "Knight Test"
# p black_knight_right.can_move?( 6, 6) == true
# p black_knight_right.can_move?( 5, 7) == true
# p black_knight_right.can_move?( 7, 5) == false
# p black_knight_right.can_move?( 1, 1) == false

# black_bishop_right = Bishop.new(6, 8, "black")

# puts "Bishop Tests"
# p black_bishop_right.can_move?(2, 4) == true
# p black_bishop_right.can_move?(5, 7) == true
# p black_bishop_right.can_move?(6, 7) == false
# p black_bishop_right.can_move?(5, 8) == false

# black_queen = Queen.new( 4, 8, "black")

# puts "Queen Tests"
# p black_queen.can_move?( 4, 1) == true
# p black_queen.can_move?( 1, 5) == true
# p black_queen.can_move?( 3, 6) == false
# p black_queen.can_move?( 5, 4) == false

# black_king = King.new(5, 8, "black")

# puts "King Tests"
# p black_king.can_move?(6, 8) == true
# p black_king.can_move?(5, 7) == true
# p black_king.can_move?(4, 6) == false
# p black_king.can_move?(7, 5) == false








