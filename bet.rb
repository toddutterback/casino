require_relative 'player_class'
require_relative 'wallet'

class Bet
	attr_accessor :amount

	def betaction(player)
	puts "Your wallet balance is #{player.wallet.check_wallet}"
	puts "How much would you like to bet?"
	@betamount = gets.strip.to_f
	end

end

Bet.new