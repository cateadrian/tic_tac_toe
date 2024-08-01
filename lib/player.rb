class Player
  def initialize(icon)
    @icon = icon
  end

  def introduce
    puts "My icon is #{@icon}"
  end

  def make_choice
    print "Please choose a position (1-9): "
    choice = gets.chomp.to_i - 1
    choice
  end

end