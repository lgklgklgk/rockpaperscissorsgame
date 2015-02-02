
class Player
  attr_accessor :name, :score, :move
   
  def initialize(name, moves)
    @name = name
    @score = 0
    @moves = moves
  end
  
  def get_move
    print "#{@name}, please choose r, p, or s: " 
    @move = gets.chomp.downcase
    until is_move_valid(@move) do
      puts "Sorry, that's not a valid move!"
      @move = gets.chomp.downcase
    end
    @move
  end
  def is_move_valid(move)
    @moves.include? move
  end 
  def increase_score
    @score += 1
  end
 
  
end
