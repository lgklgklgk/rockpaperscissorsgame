require "Pry"
require_relative "player"
require_relative "rules"

class Game
  attr_reader :moves
  
  def initialize 
    @rules = Rules.new
    @moves = @rules.valid_moves
  end
  
  def get_winner (p1, p2)
    who_wins = @rules.determine_winner(p1.move, p2.move)
    if who_wins == 1
      p1.increase_score
      puts "#{p1.name} wins!"
    elsif who_wins == -1
      p2.increase_score
      puts "#{p2.name} wins!"
    elsif who_wins == 2
      puts "It's a tie!"
    end
    
  end

end
