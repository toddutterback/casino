require_relative 'player_class'

class casino
	attr_accessor :name :ammount
	def initialize(name, ammount)
		puts """
		~~~ Welcome to the Casino ~~~

	   		What is your name?"""
	    name = gets.strip.downcase
		puts """
		~~~ Hello, #{name}!~~~

			How much money do you have?"""
		ammount = gets.to_f.strip

		puts """
		~~~ What would you like to do? ~~~
			1) Games 
			2) Check Balance
			3) Exit
			"""
		choice = gets.to_i.strip
			if choice = 1
				puts """ ~~~ What game would you like to play? ~~~
					1) High/low
					2) Blackjack
					3) Slots"""
			if choice = 2
				player_class
			if choice = 3 
				exit(0)
			else 
				puts "Thats not a valid choice, please try again"
			end
			

