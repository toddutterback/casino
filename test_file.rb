require 'paint'
require 'colorize'

# wheel1 = rand(1..8)
# wheel2 = rand(1..8)
# wheel3 = rand(1..8)
  
# puts wheel2

# w1 = 3
# w2 = 3
# w3 = 3

# if w1 == w2 && w2 == w3
#   puts "Yes"
# else
#   puts "No"
# end

# puts "Guess"
# user_guess = gets.strip.to_i
# if user_guess == rand(1..6)
# 	puts "Congrats! You won"
# else
# 	puts "sucks to be you"
# end	

puts Paint['Congrats, you win!!!!', :yellow, :black, :bright,] 
puts "Congrats, you're the big winner!!".blue.on_yellow.bold
