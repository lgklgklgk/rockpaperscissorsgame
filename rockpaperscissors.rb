require "pry"

class Player
  def initialize
    @players = {}
    @rules = [["rs", "sp", "pr"],  ["sr", "ps", "rp"],  ["rr", "ss", "pp"]]
  end
  def add_player(player)
    @players[player] = 0.0
    @players 
  end
  
  def play_game(player1, player2)  
    print "#{player1} select move (r, s, or p). "
    move1 = gets.chomp.downcase
    print "#{player2} select move (r, s, or p). "
    move2 = gets.chomp.downcase

    if @rules[0].include?("#{move1}#{move2}")
      puts "#{player1} Wins!"
      @players["#{player1}"] += 1
      @players["#{player2}"] -= 1
    elsif @rules[1].include?("#{move1}#{move2}")
      puts "#{player2} Wins!"
      @players["#{player1}"] -= 1
      @players["#{player2}"] += 1
    elsif @rules[2].include?("#{move1}#{move2}")
      puts "It's a Draw!"
    else
      puts "Sorry, Invalid Entry!"
    end
    @players
  end
end
a = Player.new
a.add_player("Luke")
a.add_player("Matthew")
binding.pry


