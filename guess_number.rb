require_relative "dice"
require_relative "bet"

class GuessNumber
	def initialze(player)
		puts "Welcome to Guess a Number #{player.name}"
		bet
	end
end

@GuessNumber_Game= GuessNumber.new()

# place a bet
# have player pick a number from 1 - 6
# roll the dice
# is player high or low?
# pay out winnings or decrease wallet
# play again or go to main menu or quit


