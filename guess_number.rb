require_relative "dice"

class HighLow
	def initialze(player)
		puts "Welcome to high low #{player.name}"
		puts "Your wallet balaace is #{player.wallet.check_wallet}"
	end
end

# place a bet
# have player pick a number from 1 - 6
# roll the dice
# is player high or low?
# pay out winnings or decrease wallet
# play again or go to main menu or quit


