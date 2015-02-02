require "Pry"
require_relative "game"
require_relative "player" 
# Class: Rules
#
# Contains the scenarios for victory, defeat, and ties for the rock paper scissors
# game. Also contains the moves that are valid for the game.
#
# Attributes:
# @rules       - An array of arrays containing move sets that result in specific
# outcomes.
# @valid_moves - An array containing acceptable moves for the game.
# Public Methods
# initialize
# determine_winner
class Rules
  attr_accessor :valid_moves
# Public: initialize
# Creates an instance of the class Rules
# 
# Parameters   : Nil
# Returns      : Nil
# State Changes: Nil
  def initialize
    @rules = [["r s", "s p", "p r"],  ["s r", "p s", "r p"],  ["r r", "s s", "p p"]]
    @valid_moves = ["r", "s", "p"]
  end
# Public determine_winner
# Uses the moves established by the Player class method get_move to determine the 
# victor of the game based off the @rules array.
#
# Parameters:
# move1 - String: Result of method p1.get_move
# move2 - String: Result of method p2.get_move
#
# Returns      : The value of the variable who_wins which represents an integer used
# to determine who won the game.
# State Changes: Changes the value of the variable who_wins.
  def determine_winner(move1, move2)
    who_wins = 0
    if @rules[0].include?("#{move1} #{move2}")
      who_wins += 1
    elsif @rules[1].include?("#{move1} #{move2}")
      who_wins += 3
    else @rules[2].include?("#{move1} #{move2}")
      who_wins += 2
    end
  end
end
