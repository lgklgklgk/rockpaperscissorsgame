require "Pry"
require_relative "game"
require_relative "rules"
require_relative "player" 
# class Driver
# Creates the two player objects and then actually runs the game.
#
# Attributes    : Nil
# Public Methods:
# initialize
# start_game
# create_player
class Driver
# Public: initialize
# Creates an instance of the Driver class
#
# Parameters   : Nil  
# Returns      : Nil
# State Changes: Nil
  def initialize
  end
# Public: start_game
# Creates an instance of the Game class set to new_game. Creates two instances of the 
# Player class set to p1 and p2 respectively by calling the create player method. 
# Calls the Player method get_move on
# each player and plugs them into the game method get_winner. The players' names and 
# scores are then displayed.
#
# Parameters   : Nil
# Returns      : Nil
# State Changes: Nil
  def start_game
    new_game = Game.new
    p1 = create_player(new_game.moves)
    p1.get_move
    p2 = create_player(new_game.moves)
    p2.get_move
    new_game.get_winner(p1, p2)
    puts "#{p1.name} has #{p1.score} and #{p2.name} has #{p2.score}."
  end
# Public: create_player
# Prompts the user for its character's name, then creates it as an object of the 
# Player class.
#
# Parameters: 
# moves - Variable representing the valid set of moves in the Rules class. It's 
# called from the Game class where it is an instance variable set to calling the
# instance variable array @valid_moves in the Rules class.
#
# Returns      : Nil
# State Changes: Creates new object of the Player class.
  def create_player(moves)
    puts "What shall I call you, oh mighty player? "
    name = gets.chomp
    Player.new(name, moves)
  end
  
end
  

  a = Driver.new
  a.start_game
  
  
  
