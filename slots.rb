
require_relative 'player_class'
require_relative 'wallet'

class Slots


  def initialize(player)
    @player = player
    slots_menu
  end

  def slots_menu
   puts """
            ~~~ Welcome to Slots! ~~~
   To try your luck, press 'P' to pull the lever
             OR Press 'Q' to quit!"""
    slots
  end

  def slots
      input = gets.strip.downcase 
    if input == "p" 
      puts """
           ~~~ How much do you want to bet? ~~~"""
      bet = gets.strip.to_f

      wheel1 = rand(1..8)
      wheel2 = rand(1..8)
      wheel3 = rand(1..8)
  
      print wheel1, " ", wheel2, " ", wheel3
      print "\n"	

        if wheel1 == 7 && wheel2 == 7 && wheel3 == 7
          puts "!JACKPOT!"
          @player.wallet.wallet_add(bet *= 10)
          slots_menu
	      elsif wheel2 == wheel3
		      puts "Double Wild"
		      @player.wallet.wallet_add(bet *= 5)
          slots_menu
	      elsif wheel1 == wheel2
	        puts "Wild!"
	        @player.wallet.wallet_add(bet *= 3)
          slots_menu
        elsif wheel1 == wheel2 && wheel2 == wheel3
		      puts "winner"
			    @player.wallet.wallet_add(bet, (wheel1 * 10))
          slots_menu
	      else
		      puts "try again"
	        @player.wallet.wallet_subtract(bet)
          slots_menu
	      end
      
      elsif input == "q"

      else
        "Invalid entry, Try Again."
        slots_menu
      end
    end
end