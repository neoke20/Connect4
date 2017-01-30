class GameTurn

  attr_reader :board, :player, :row_index, :col_index

  def initialize(board, player, row_index, col_index)
    @board = board
    @player = player
    @row_index = row_index
    @col_index = col_index
  end
end
