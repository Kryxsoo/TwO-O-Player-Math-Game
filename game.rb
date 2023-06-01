  # Displays Question class
  # Compares an answer
  # Removes life if answered incorrectly
  # Checks Life
  # Swaps between players
  # Reruns Loop
  

  #--- properties
  # Current player

class Game
  attr_accessor :turn

  def initialize
    @player1 = Player.new("P1")
    @player2 = Player.new("P2")
  end

  def start
    puts "Starting the game!"
    current_player = @player1
    while should_end_game do
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      question = Question.new
      question.ask(current_player)
      if current_player == @player1
        current_player = @player2
      else
        current_player = @player1
      end
    end
    puts "Game Over"
    winner = determine_winner
    puts "The winner is #{determine_winner}!"
  end

  def should_end_game
    @player1.lives != 0 && @player2.lives != 0
  end

  def determine_winner
  # Determines the player that is still alive
  if @player1.lives != 0
    @player1.name
  elsif @player2.lives !=0
    @player2.name
    end
  end


end