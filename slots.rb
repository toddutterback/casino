require_relative 'player_class'
require_relative 'wallet'

class Slots

  def initialize 
    puts "Press P to Pull Lever"
    puts "Press Q to Quit"
      input = gets.strip.downcase 
    
    if input == "p" 
      puts "What amount are you inserting?"
      bet = gets.strip.to_f

      wheel1 = rand(1..8)
      wheel2 = rand(1..8)
      wheel3 = rand(1..8)
  
      print wheel1, " ", wheel2, " ", wheel3
      print "\n"	

        if wheel1 == 7 && wheel2 == 7 && wheel3 == 7
          puts "!JACKPOT!"
          Player.wallet.wallet_add(bet *= 10)
	      elsif
		      wheel2 == wheel3
		      puts "Double Wild"
		      Player.wallet.wallet_add(bet *= 5)
	      elsif
	        wheel1 == wheel2
	        puts "Wild!"
	        Player.wallet.wallet_add(bet *= 3)
        elsif wheel1 == wheel2 && wheel2 == wheel3
		      puts "winner"
			    Player.wallet.wallet_add(bet, (wheel1 * 10))
	      else
		      puts "try again"
	        Player.wallet.wallet_subtract(bet)
	      end
      
      elsif
        input == "q"
        game_menu
      else
        "Bad entry. Try Again."
        initialize
      end
    end  
end

me = Slots.new

me