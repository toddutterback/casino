require 'pry'
require_relative 'player_class'
require_relative 'slots'
require_relative 'guess_number'


class Casino
   attr_accessor :player

   def initialize
   		@players = {}
       welcome_menu
   end
       
   def welcome_menu
       puts """
       ~~~ Welcome to the Casino ~~~"""
       add_player
   end

   def add_player
   		puts """
   		What is your name?"""
      name = gets.strip
      puts """
          ~~~ Hello, #{name}!~~~

       How much money do you have?"""
      amount = gets.strip.to_f
      @players[name] = Player.new(name, amount)
      switch_players
    end

    def switch_players
    	if @players.keys.length == 1
    		@player = @players[@players.keys[0]]
    	else
    		puts "Choose Player (enter player name exactly)"
    		puts @players.keys
    		choose = gets.strip
    		if @players.keys.include?(choose)
    			@player = @players[choose]
    		else
    			puts """
    			Invalid selection, please try again."""
    			switch_players
    		end
    	end
    	main_menu
    end
       
    def main_menu    
        puts """
          ~~~ What would you like to do? ~~~
          1) Games 
          2) Check Balance
          3) Add another player
          4) Switch players
          5) Exit
          """
    choice = gets.strip.to_i
        if choice == 1
          game_menu
        elsif choice == 2
          player.wallet.check_wallet
          main_menu
        elsif choice == 3 
          add_player
        elsif choice == 4
        	switch_players
        elsif choice == 5
        	exit(0)
        			
        else 
          puts "Thats not a valid choice, please try again"
        end
    end
        
    def game_menu
        puts """ ~~~ What game would you like to play? ~~~
        1) Number Guess
        2) Blackjack
        3) Slots
        4) Exit to Main Menu"""
        choice = gets.strip.to_i
        if choice == 1
        	GuessNumber.new(@player)
        elsif choice == 2
          blackjack
        elsif choice == 3
          Slots.new(@player)     
        elsif choice == 4
          main_menu
        else 
          puts "Thats not a valid choice, please try again"
          game_menu
        end
        puts 'Thanks for playing!'
        main_menu
    end
end

casino = Casino.new
# GuessNumber.new(casino.player)