class Player
  attr_reader :icon, :moves
  
  def initialize(icon)
    @icon = icon
    @moves = []
  end

  def introduce
    puts "My icon is #{@icon}"
  end

  def make_choice
    print "Player #{@icon} please choose a position (1-9): "
    choice = gets.chomp.to_i - 1
  end

  def add_move(choice)
    @moves.push(choice + 1)
  end
end