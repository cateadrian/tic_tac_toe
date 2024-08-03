require_relative "lib/player"
require_relative "lib/board"

board = Board.new
player_x = Player.new("X")
player_o = Player.new("O")
player_turn = rand(1..2)
board.state

until board.winner
  if board.full?
        puts "Its a draw!"
        break
  end

  case player_turn
  when 1
    choice = player_x.make_choice
    board.player_move(player_x.icon, choice)
    board.winner?(player_x.icon, player_x.moves)
    player_turn = 2
  when 2
    choice = player_o.make_choice
    board.player_move(player_o.icon, choice)
    board.winner?(player_o.icon, player_o.moves)
    player_turn = 1
  end
  board.state
end

if player_turn == 1 && board.full? == false
  puts "#{player_o.icon} is the winner!"
elsif player_turn == 2 && board.full? == false
  puts "#{player_x.icon} is the winner!"
end

