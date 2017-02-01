require_relative 'board'
require_relative 'player'

board = Board.new

puts "Hey Player 1, what is your name ?"
player_one_name = gets.chomp
puts "Alright #{player_one_name}, you are given the 'o' pieces\n"

puts "\nHey Player 2, what is your name ?"
player_two_name = gets.chomp
puts "Alright #{player_two_name}, you are given the 'x' pieces"

o_player = Player.new("#{player_one_name}", 'o')
x_player = Player.new("#{player_two_name}", 'x')

all_players = [o_player, x_player].shuffle
turn_index = 0

while board.has_empty_spaces? && !board.winner?
  current_player = all_players[turn_index]
  puts "\nIt is #{current_player.name}'s turn"

  puts "Choose the column where you want to put your piece."
  col_index = gets.chomp.to_i

  board.add_turn(current_player, col_index)

  puts board.print

  turn_index = turn_index == 0 ? 1 : 0

  if board.winner?
    puts "#{current_player.name} wins !"
  end

  if !board.has_empty_spaces?
    puts "The board is full, start another game !"
  end

end
