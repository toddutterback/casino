require_relative 'wallet'


class Player
	attr_accessor :wallet
  attr_reader :name
  
  def initialize(name,amount)
    @name = name
    @wallet = Wallet.new(amount)
  end

  def drop_wallet
  	self.wallet = nil
    player.wallet.check_wallet
  end

  def find_money
    self.wallet = wallet_add(rand(1..1000))
    puts "Oh snap, you found some flow"
    player.wallet.check_wallet
  end  

end


# ------THIS IS FOR TESTING-------


# jake = Player.new("Jake",40.00)
# jake.check_wallet

# jake.wallet_add(10.00)
# jake.check_wallet


# jake.wallet_subtract(10.00)
# jake.check_wallet

# ---------TESTING END------------