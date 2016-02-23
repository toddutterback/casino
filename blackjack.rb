require_relative 'player_class'
require_relative 'wallet'
require 'colorize'

class Blackjack

  def initialize(player)
    @player = player
    blackjack_welcome
  end  

  def blackjack_welcome
    puts "Welcome to Blackjack (sucker)"
    puts "Would you like to play? Enter yes to continue"
    player_response = gets.strip.downcase
    if player_response == "yes"
      bet
    else  
  end

  def bet
    puts "How much would you like to lose / bet?"
    @amount = gets.strip.to_i
    game_play
  end

  def game_play
    puts "lets play!"
  end
end 

game = Blackjack.new
game