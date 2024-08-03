class Board
  attr_reader :winner

  def initialize
    @state = [" ", " ", " ", 
              " ", " ", " ",
              " ", " ", " "]
              
  end

  def state
    puts " #{@state[0]} | #{@state[1]} | #{@state[2]} \n----------- \n #{@state[3]} | #{@state[4]} | #{@state[5]} \n----------- \n #{@state[6]} | #{@state[7]} | #{@state[8]}"
  end

  def player_move(player, choice)
    @state[choice] = player
  end
  
  def full?
    @state.any?{|element| element == " "}
  end
end