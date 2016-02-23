require_relative 'wallet'


class Player
	attr_accessor :wallet
  attr_reader :name
  
  def initialize(name,amount)
    @name = name
    @wallet = Wallet.new(amount)
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