require "Pry"
require_relative "game"
require_relative "rules"
require_relative "player" 
class Driver
  def initialize
  end
  def start_game
    new_game = Game.new
    p1 = create_player(new_game.moves)
    p1.get_move
    p2 = create_player(new_game.moves)
    p2.get_move
    new_game.get_winner(p1, p2)
    puts "#{p1.name} has #{p1.score} and #{p2.name} has #{p2.score}."
  end
  def create_player(moves)
    puts "What shall I call you, oh mighty player? "
    name = gets.chomp
    Player.new(name, moves)
  end
  
end
  

  a = Driver.new
  a.start_game
  
  
  
