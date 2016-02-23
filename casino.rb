require 'pry'
require 'colorize'
require_relative 'player_class'
require_relative 'slots'
require_relative 'guess_number'


class Casino
   attr_accessor :player

   def initialize
   		@players = {}
       welcome_menu
       @player={}
   end
       
   def welcome_menu
       puts "       ~~~ Welcome to the Casino ~~~"""
       add_player
   end

   def add_player
   		puts "             What is your name?"
      name = gets.strip
      puts "            ~~~ Hello, #{name}!~~~"
      puts "         How much money do you have?"
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
      @player = Player.new(name, amount)
      main_menu
    end
       
    def main_menu    
        print "                ".on_white
print "C ".bold.red.on_white
print "A ".bold.yellow.on_white
print "S ".bold.green.on_white
print "I ".bold.cyan.on_white
print "N ".bold.blue.on_white
print "O".bold.magenta.on_white
puts "                  ".on_white
puts " .-------.                         .-------. ".bold.on_red
puts " |A  .   |  1) GAMES               |2 /\\   | ".bold.on_yellow
puts " |  / \\  |  2) CHECK BALANCE       |  \\/   | ".bold.on_green
puts " | (_,_) |  3) ADD ANOTHER PLAYER  |       | ".bold.on_cyan
puts " |   I   |  4) SWITCH PLAYERS      |  /\\   | ".bold.on_blue
puts " |      A|  5) EXIT                |  \\/  2| ".bold.on_magenta
puts " `-------+                         `-------+ ".bold.on_red
puts "                                             ".on_white
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