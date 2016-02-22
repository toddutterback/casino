require 'pry'
require_relative 'player_class'

class Casino
	attr_accessor :player

	def initialize
		puts """
		~~~ Welcome to the Casino ~~~

		What is your name?"""
		name = gets.strip.downcase
		puts """
		~~~ Hello, #{name}!~~~

		How much money do you have?"""
		amount = gets.strip.to_f
		@player = Player.new(name, amount)
		@player2 = Player.new('Jake Day', 300.00)
		binding.pry
		puts """
		  ~~~ What would you like to do? ~~~
		  1) Games 
		  2) Check Balance
		  3) Exit
		  """
		choice = gets.to_i.strip
		if choice == 1
			puts """ ~~~ What game would you like to play? ~~~
			1) High/low
			2) Blackjack
			3) Slots
			4) Number Guess"""
		elsif choice == 2
		  player_class
		elsif choice == 3 
		  exit(0)
		else 
		  puts "Thats not a valid choice, please try again"
		end
	end
end

casino = Casino.new
HighLow.new(casino.player)