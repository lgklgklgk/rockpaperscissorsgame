require "Pry"
require_relative "game"
require_relative "player" 

class Rules
  attr_accessor :valid_moves
  def initialize
    @rules = [["r s", "s p", "p r"],  ["s r", "p s", "r p"],  ["r r", "s s", "p p"]]
    @valid_moves = ["r", "s", "p"]
  end
  
  def determine_winner(move1, move2)
    who_wins = 0
    if @rules[0].include?("#{move1} #{move2}")
      who_wins += 1
    elsif @rules[1].include?("#{move1} #{move2}")
      who_wins -= -1
    else @rules[2].include?("#{move1} #{move2}")
      who_wins += 2
    end
  end
end
