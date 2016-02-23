
require_relative 'player_class'
require_relative 'wallet'
require 'colorize'

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
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 487c6e3516cc1c051149cf1f3caf9c03130db18c
          puts puts """JACKPOT WINNER

──────────────────██████────────────────
─────────────────████████─█─────────────
─────────────██████████████─────────────
─────────────█████████████──────────────
──────────────███████████───────────────
───────────────██████████───────────────
────────────────████████────────────────
────────────────▐██████─────────────────
────────────────▐██████─────────────────
──────────────── ▌─────▌────────────────
────────────────███─█████───────────────
────────────████████████████────────────
──────────████████████████████──────────
────────████████████─────███████────────
──────███████████─────────███████───────
─────████████████───██─███████████──────
────██████████████──────────████████────
───████████████████─────█───█████████───
──█████████████████████─██───█████████──
──█████████████████████──██──██████████─
─███████████████████████─██───██████████
████████████████████████──────██████████
███████████████████──────────███████████
─██████████████████───────██████████████
─███████████████████████──█████████████─
──█████████████████████████████████████─
───██████████████████████████████████───
───────██████████████████████████████───
───────██████████████████████████───────
─────────────███████████████───────────""".green.on_white
          @player.wallet.wallet_add(bet *= 10)
          slots_menu
	      elsif wheel2 == wheel3
		      puts "Double Wild".white.on_green.bold
          puts "Congrats, you win!!".white.on_green.bold
		      @player.wallet.wallet_add(bet *= 5)
          slots_menu
	      elsif wheel1 == wheel2
	        puts "Wild!".white.on_blue.bold
          puts"Congrats, you win!!".white.on_blue.bold
	        @player.wallet.wallet_add(bet *= 3)
          slots_menu
        elsif wheel1 == wheel2 && wheel2 == wheel3
		      puts "Congrats, you win!!".white.on_blue.bold
<<<<<<< HEAD
=======
=======
          puts "!JACKPOT!".red.on_blue
          @player.wallet.wallet_add(bet *= 10)
          slots_menu
	      elsif wheel2 == wheel3
		      puts "Double Wild".yellow.on_blue
		      @player.wallet.wallet_add(bet *= 5)
          slots_menu
	      elsif wheel1 == wheel2
	        puts "Wild!".yellow.on_blue
	        @player.wallet.wallet_add(bet *= 3)
          slots_menu
        elsif wheel1 == wheel2 && wheel2 == wheel3
		      puts "winner".yellow.on_blue
>>>>>>> be1e94e7b838d9c8e7755f0c2a8282ee3911caa5
>>>>>>> 487c6e3516cc1c051149cf1f3caf9c03130db18c
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