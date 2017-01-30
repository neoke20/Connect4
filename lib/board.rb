class Board

  def initialize(num_rows_and_columns = 7)
    @board = []
    num_rows_and_columns.times do
      row = []
      num_rows_and_columns.times do
        row << nil
      end
      @board << row
    end

  end

  def rows
    @board
  end

  def add_turn(player, row_index, col_index)
    @board[row_index][col_index] = player
  end

  def print
    board_print = ''
    @board.each_with_index do |row, index|
      spots = []
      row.each do |space|
        if space.nil?
          spots << '_'
        else
          spots << space
        end
      end
      board_print << spots.join(' | ') + "\n"
    end
    board_print
  end

  def empty_spaces?
    @board.each do |row|
      row.each do |space|
        return true if space.nil?
      end
    end
    false
  end

end
