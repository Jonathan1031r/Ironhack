class Board
  def initialize
    @board_layout = Array.new(8, ".").map{|row| Array.new(8, ".")}
    @row_label = ["A1", "B2", "C3", "D4", "E5", "F6", "G7", "H8"]
    @column_label = ["8", "7", "6", "5", "4", "3", "2", "1"]

    print "\t"
    print @row_label.join("\t")
    puts
    @board_layout.each_with_index do |row, i|
      print @column_label[i]
      print "\t"
      print @row.join("\t")
      puts
    
    end
  end

  def add_piece(the_piece)
    x = the_piece.x
    y = the_piece.y
    @board_layout[x][y] = the_piece
  end
  
  def board_can_move?(x, y, final_x, final_y)
    the_piece = @board_layout[x][y]
      
      if the_piece == nil
        false
      elsif x == final_x && y == final_y
        false    
      elsif the_piece.can_move?(final_x, final_y)
        true
      end     
  end  
end


