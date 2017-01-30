require_relative "../spec/spec_helper"

class Board

  def initialize(num_rows_and_columns = 7)
    @board = []
    num_rows_and_columns.times do
      row = []
      num_rows_and_columns.times do
        row << BoardSpace.new
      end
      @board << row
    end

  end

  def rows
    @board
  end

  def add_turn(player, col_index)
    row_index = 6
    turn_over = false
    while turn_over == false
      if @board[6][col_index].occupied? && !@board[5][col_index].occupied?
        @board[5][col_index].player = player
        turn_over = true
      elsif @board[5][col_index].occupied? && !@board[4][col_index].occupied?
        @board[4][col_index].player = player
        turn_over = true
      elsif @board[4][col_index].occupied? && !@board[3][col_index].occupied?
        @board[3][col_index].player = player
        turn_over = true
      elsif @board[3][col_index].occupied? && !@board[2][col_index].occupied?
        @board[2][col_index].player = player
        turn_over = true
      elsif @board[2][col_index].occupied? && !@board[1][col_index].occupied?
        @board[1][col_index].player = player
        turn_over = true
      elsif @board[1][col_index].occupied? && !@board[0][col_index].occupied?
        @board[0][col_index].player = player
        turn_over = true
      elsif @board[0][col_index].occupied? && @board[1][col_index].occupied?
        puts "This column is full."
        puts "Choose the column where you want to put your piece."
        col_index = gets.chomp.to_i
      else
        @empty_row = @board[row_index]
        @board[row_index][col_index].player = player
        turn_over = true
      end
    end
  end

  # def add_turn(player, col_index)
  #   row_index = -1
  #     if @board[-1][col_index].occupied?
  #       while @board[row_index][col_index].occupied?
  #         binding.pry
  #         @board[row_index].index -= 1
  #         if  @board[0][col_index].occupied?
  #           puts "error"
  #           puts "Choose the column where you want to put your piece."
  #           col_index = gets.chomp.to_i
  #         elsif !@board[row_index][col_index].occupied?
  #           @empty_row = @board[row_index]
  #           @board[row_index][col_index].player = player
  #         end
  #       end
  #     else
  #       @board[row_index][col_index].player = player
  #     end
  # end

  def print
    board_print = ''
    @board.each_with_index do |row, index|
      spots = []
      row.each do |space|
        spots << space.to_char
      end
      board_print << spots.join(' | ') + "\n"
    end
    board_print
  end

  def has_empty_spaces?
    @board.each do |row|
      row.each do |space|
        return true if !space.occupied?
      end
    end
    false
  end

  def winner?
    false
  end

end
