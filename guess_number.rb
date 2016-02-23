require_relative 'player_class'
require_relative 'wallet'
require 'colorize'
# require_relative "bet"

class GuessNumber
	
	def initialize(player)
		@player = player
		puts """~~~ Welcome to Guess a Number! ~~~
		"""
    # bet
    pick_number
  end

  def pick_number
    puts " How much would you like to bet?
    "
    @amount = gets.strip.to_i
		puts "~~~ Pick a number, 1-6, or type '7' to go back to menu ~~~"
		@user_guess = gets.strip.to_i
		if @user_guess == 7
		elsif 
			[1, 2, 3, 4, 5, 6].include? @user_guess.to_i 
			dice_roll
		else
			puts "Please select a number 1-6 or type 7 to exit"
			pick_number
		end
	end

	def dice_roll
		if @user_guess.to_i == rand(1..6)
			puts "***** Congrats! You won! *****".yellow.on_blue
			@player.wallet.wallet_add(@amount)
			pick_number
		else
			puts "Sorry, that was really close. You should try again"
			@player.wallet.wallet_subtract(@amount)
      puts "Do you want to continue? \n Enter 'no' to go back to menu or any other key to continue."
      @user_guess2 = gets.strip.downcase
        if @user_guess2 == "no"
        else  
			   pick_number
        end 
		end
	end


end


# number_game = Guess_Number.new

# number_game

# place a bet
# have player pick a number from 1 - 6
# roll the dice
# is player high or low?
# pay out winnings or decrease wallet
# play again or go to main menu or quit


