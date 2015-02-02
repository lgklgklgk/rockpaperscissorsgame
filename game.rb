require "Pry"
require_relative "player"
require_relative "rules"
# Class: Game
#
# Uses the games rules from the Rules class to determine who won the game.
#
# Attributes
# @rules - Class Object: set equal to an instance of the Rules object.
# @moves - Array       : an array of valid moves contained in the Rules class.
#
# Public Methods:
# initialize
# best_of_n
# get_winner
class Game
  attr_reader :moves, :games
# Public: initialize
# Creates an instance of the Game class as well as creates an instance of the 
# Rules class within the Game class. Calls the Rules attribute, valid_moves.
#
# Returns      : Nil
# State Changes: Nil
  def initialize 
    @rules = Rules.new
    @moves = @rules.valid_moves
  end
# Public best_of_n
# Will eventually establish the number of games to be played in a round and determine
# its winner. Currently not finished.
#
# Parameters   : Nil, at least so far.
# Returns      : Nil, also so far
# State Changes: Nil, also so far  
  def best_of_n
    puts "How many games are we playing?"
    @games = gets.chomp.to_i
  end
# Public get_winner
# Accepts each Player object's moves and using the Rules class is able to determine
# a winner. The player object who wins has its @score attribute increased by 1.
#
# Parameters:
# p1 - Class Object: player 1
# p2 - Class Object: player 2
#
# Returns      : Nil
# State Changes: Increases the score attribute of the winning player by one.
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
