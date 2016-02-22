class Player
  attr_accessor :wallet_add, :wallet_subtract, :check_wallet
  attr_reader :name
  
  def initialize(name,wallet)
    @name = name
    @wallet = (wallet)
  end

  def check_wallet
    puts @wallet
  end

  def wallet_add(bet)
    @wallet = @wallet + bet
  end
  
  def wallet_subtract(bet)
    @wallet = @wallet - bet
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