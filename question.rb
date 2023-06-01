  # Generates a number between 1 - 20
  # Displays the question

  #--- properties
  # function that uses rand()
  # outputs the question as a string
  # save the answer as a variable

class Question
  attr_reader :answer, :x, :y

  def initialize
    @x = rand(1..20)
    @y = rand(1..20)
    @answer = x + y
  end

  def ask(player)
    puts player.name
    prompt
    player_answer = gets.chomp.to_i
    if player_answer == @answer
      puts "You've answered correctly!"
    else 
      puts "You're wrong!"
      player.loselife
    end
  end




  def prompt
    puts "What is #{x} + #{y}?"
  end
  
end