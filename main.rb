require_relative "lib/player"
require_relative "lib/board"

board = Board.new
board.state

player_1 = Player.new("X")
player_1.introduce
