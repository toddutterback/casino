require_relative 'player_class'
require_relative 'wallet'

class Bet
	def betaction
	puts "Your wallet balaace is #{player.wallet.check_wallet}"
	puts "How much would you like to bet?"
	@betamount = gets.strip.to_f
	end
end

Bet.new