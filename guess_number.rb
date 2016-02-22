require_relative "dice"
require_relative "bet"
require_relative "player_class"

class Number_Guess
	
	def initialize(player)
		puts "Welcome to Guess a Number #{player.name}"
		bet
		pick_number
		dice_roll
	end

	def pick_number
		puts "Pick a number, 1-6, or type 'Exit' to go back to menu"
		@user_guess = gets.strip.to_i
		if user_guess == exit
			game_menu
		elsif user_guess == 1
		elsif 
			puts "Thats not a valid choice, please try again"
		end
	end

	def dice_roll
		d.roll
		if @user_guess == d.roll
			puts "Congrats! You won"
			bet
		else
			puts "Sorry, but that was really close. You should try again"
			bet
		end
	end
end


Number_Guess.new

# place a bet
# have player pick a number from 1 - 6
# roll the dice
# is player high or low?
# pay out winnings or decrease wallet
# play again or go to main menu or quit


