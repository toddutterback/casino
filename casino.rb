require 'pry'
require_relative 'player_class'

class Casino
	attr_accessor :player

	def initialize
<<<<<<< HEAD
		welcome_menu
		main_menu
		game_menu
	end
		
	def welcome_menu
=======
>>>>>>> d5ac8e5c8b0aed0380b1f5bb65dd5b2d9d94d989
		puts """
		~~~ Welcome to the Casino ~~~

		What is your name?"""
<<<<<<< HEAD
		name = gets.strip
=======
		name = gets.strip.downcase
>>>>>>> d5ac8e5c8b0aed0380b1f5bb65dd5b2d9d94d989
		puts """
		~~~ Hello, #{name}!~~~

		How much money do you have?"""
		amount = gets.strip.to_f
		@player = Player.new(name, amount)
<<<<<<< HEAD
	end

	def main_menu	
=======
		@player2 = Player.new('Jake Day', 300.00)
		binding.pry
>>>>>>> d5ac8e5c8b0aed0380b1f5bb65dd5b2d9d94d989
		puts """
		  ~~~ What would you like to do? ~~~
		  1) Games 
		  2) Check Balance
		  3) Exit
		  """
<<<<<<< HEAD
	choice = gets.strip.to_i
		if choice == 1
			game_menu
		elsif choice == 2
		  player.wallet.check_wallet
=======
		choice = gets.to_i.strip
		if choice == 1
			puts """ ~~~ What game would you like to play? ~~~
			1) High/low
			2) Blackjack
			3) Slots
			4) Number Guess"""
		elsif choice == 2
		  player_class
>>>>>>> d5ac8e5c8b0aed0380b1f5bb65dd5b2d9d94d989
		elsif choice == 3 
		  exit(0)
		else 
		  puts "Thats not a valid choice, please try again"
		end
	end
<<<<<<< HEAD
		
	def game_menu
		puts """ ~~~ What game would you like to play? ~~~
		1) Numbe Guess
		2) Blackjack
		3) Slots
		4) Number Guess"""
	end
end

casino = Casino.new
GuessNumber.new(casino.player)
=======
end

casino = Casino.new
HighLow.new(casino.player)
>>>>>>> d5ac8e5c8b0aed0380b1f5bb65dd5b2d9d94d989
