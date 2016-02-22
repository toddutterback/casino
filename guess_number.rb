require_relative "dice"
<<<<<<< HEAD
=======
<<<<<<< HEAD
require_relative "bet"

class GuessNumber
	def initialze(player)
		puts "Welcome to Guess a Number #{player.name}"
		bet
	end
end

@GuessNumber_Game= GuessNumber.new()

=======
>>>>>>> ab7cd3791fbd0b0acfb2a1639ba3fd552d60da71

class HighLow
	def initialze(player)
		puts "Welcome to high low #{player.name}"
		puts "Your wallet balaace is #{player.wallet.check_wallet}"
	end
end

<<<<<<< HEAD
=======
>>>>>>> d5ac8e5c8b0aed0380b1f5bb65dd5b2d9d94d989
>>>>>>> ab7cd3791fbd0b0acfb2a1639ba3fd552d60da71
# place a bet
# have player pick a number from 1 - 6
# roll the dice
# is player high or low?
# pay out winnings or decrease wallet
# play again or go to main menu or quit


