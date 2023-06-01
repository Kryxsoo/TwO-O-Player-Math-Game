# Create 2 instances of the class
# Stores the life for player 1 & 2
# Stores the name of the players

#--- properties
# {state || life} life of player
# {state || fixed names} player of name
# attr_accessor :name life
## -= life if answered incorrectly

class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def loselife
    @lives -= 1
  end
    
end