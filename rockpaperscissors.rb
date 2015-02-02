require "pry"
# Class: Rps
#
# Plays a best of "n" games of Rock Paper Scissors.
#
# Attributes:
# @players - Hash: Contains player names and their corresponding score.
# @rules   - Array: Contains winning, losing, and tie results of game.
#
# Public Methods:
# add_player
# play_game
class Player
# Public: Initialize
# Creates a hash to contain the players and their scores as well as defines the rules
# of the game with a scenario array.
# Parameters: Nil
# 
# Returns: Nil
# State Changes: Creates empty hash for @players variable and establishes an array 
# of arrays containing the potential game outcomes.
  def initialize
    @players = {}
    @rules = [["rs", "sp", "pr"],  ["sr", "ps", "rp"],  ["rr", "ss", "pp"]]
  end
# Public: add_player
# Adds a player to the @players hash and establishes a starting score of 0.
#
# Parameters:
# player - the player to add.

# Returns      : the @players hash
# State Changes: adds a player to the players hash.  
  def add_player(player)
    @players[player] = 0.0
    @players 
  end
# Public: play_game
# Begins a specified best of "n" games of Rock Paper Scissors.
# Parameters:
# player1 - Player 1 of the RPS game
# player2 - Player 2 of the RPS game
# games   - Number of games the best of "n" series will be
#
# Returns:
# @players, the hash containing the players' names and their corresponding scores.
# State Changes:
# Score of 1 will be added to player's score for each game won. 
  def play_game(player1, player2, games)  
    until @players["#{player1}"] == (games / 2) + 1 || 
    @players["#{player2}"] == (games / 2) + 1
      print "#{player1} select move (r, s, or p). "
      move1 = gets.chomp.downcase
      print "#{player2} select move (r, s, or p). "
      move2 = gets.chomp.downcase
        if @rules[0].include?("#{move1}#{move2}")
          puts "#{player1} Wins!"
          @players["#{player1}"] += 1
          #@players["#{player2}"] -= 1
        elsif @rules[1].include?("#{move1}#{move2}")
          puts "#{player2} Wins!"
          #@players["#{player1}"] -= 1
          @players["#{player2}"] += 1
        elsif @rules[2].include?("#{move1}#{move2}")
          puts "It's a Draw!"
        else
          puts "Sorry, Invalid Entry!"
        end
    
     
    end
    
    @players
  end  
end
a = Player.new
a.add_player("Luke")
a.add_player("Matthew")
binding.pry


