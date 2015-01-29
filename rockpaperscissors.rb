require "pry"

P1W = ["rs", "sp", "pr"]
P2W = ["sr", "ps", "rp"]
TIE = ["rr", "ss", "pp"]
  



print "Player one select move (r, s, or p). "
move1 = gets.chomp.downcase
print "Player two select move (r, s, or p). "
move2 = gets.chomp.downcase

if P1W.include?("#{move1}#{move2}")
  puts "Player 1 Wins!"
elsif P2W.include?("#{move1}#{move2}")
  puts "Player 2 Wins!"
else
  puts "It's a Draw!"
end


