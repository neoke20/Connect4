require_relative 'board'
require_relative 'player'

board = Board.new
o_player = Player.new('o')
x_player = Player.new('x')

all_players = [o_player, x_player].shuffle
turn_index = 0

while board.has_empty_spaces? && !board.winner?
  current_player = all_players[turn_index]
  puts "\nIt is player #{current_player.character}'s turn"

  # puts "Choose the row where you want to put your piece."
  # row_index = gets.chomp.to_i

  puts "Choose the column where you want to put your piece."
  col_index = gets.chomp.to_i

  board.add_turn(current_player, col_index)

  puts board.print

  turn_index = turn_index == 0 ? 1 : 0
end
