# Class: Player
#
# Creates a player object for the rock paper scissors game
#
# Attributes:
# @name  - String: The name of the player
# @score - Integer: The player's score
# @moves - Array: An array containing the allowed moves
#
# Public Methods
# get_move
# is_move_valid
# increase_score
class Player
  attr_accessor :name, :score, :move
# Public: initialize
# Creates the player object
#
# Parameters: 
# name  - The player's name
# moves - An array of moves that is called from the instance variable @valid_moves 
# in the Rules class.  
# Returns      : Nil
# State Changes: Nil
  def initialize(name, moves)
    @name = name
    @score = 0
    @moves = moves
  end
# Public: get move
# Sets the move of the player object
#
# Parameters: Nil
#
# Returns      : @move - What move the player chose
# State Changes: Nil 
  def get_move
    print "#{@name}, please choose r, p, or s: " 
    @move = gets.chomp.downcase
    until is_move_valid(@move) do
      puts "Sorry, that's not a valid move!"
      @move = gets.chomp.downcase
    end
    @move
  end
# Public: is_move_valid
# Checks in the Rules class whether or not a players move is acceptable
#
# Parameters:
# move = Set to the instance variable @move in the method get_move. It is the
# response given by the player.
#
# Returns      : Nil
# State Changes: Nil
  def is_move_valid(move)
    @moves.include? move
  end 
# Public def increase_score
# Increases a player object's instance variable @score by one.
# 
# Parameters: Nil
#
# Returns      : Nil
# State Changes: Adds one to the score attribute
  def increase_score
    @score += 1
  end
end
