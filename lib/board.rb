class Board
  attr_reader :winner

  def initialize
    @state = [" ", " ", " ", 
              " ", " ", " ",
              " ", " ", " "]
    @win_combos = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]
    @winner =  false
  end

  def state
    puts " #{@state[0]} | #{@state[1]} | #{@state[2]} \n----------- \n #{@state[3]} | #{@state[4]} | #{@state[5]} \n----------- \n #{@state[6]} | #{@state[7]} | #{@state[8]}"
  end

  def player_move(player, choice)
    @state[choice] = player
  end
  
  def full?
    @state.all?{|element| element != " "}
  end

  def winner?(player, player_moves)
    @win_combos.each do |combos|
      if (combos-player_moves).empty?
        @winner = true
      end
    end
  end
  
end