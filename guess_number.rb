require_relative 'player_class'
# require_relative "bet"

class Guess_Number
	
	def initialize
		puts "Welcome to Guess a Number"
		# bet
		pick_number
	end

	def pick_number
		puts "Pick a number, 1-6, or type '7' to go back to menu"
		@user_guess = gets.strip.to_i
		if @user_guess == 7
			game_menu
		elsif 
			@user_guess.to_i == (1 || 2 || 3 || 4 || 5 || 6)
			dice_roll
		else
			puts "Please select a number 1-6 or type 7 to exit"
			pick_number
		end
	end

	def dice_roll(player, wallet)
		if @user_guess.to_i == rand(1..6)
			puts "Congrats! You won"
			player.wallet.wallet_add(bet)
			pick_number
		else
			puts "Sorry, that was really close. You should try again"
			player.wallet.wallet_subtract(bet)
			pick_number
		end
	end
end


number_game = Guess_Number.new

number_game

# place a bet
# have player pick a number from 1 - 6
# roll the dice
# is player high or low?
# pay out winnings or decrease wallet
# play again or go to main menu or quit


