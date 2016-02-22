class Wallet
	attr_accessor :amount

	def initialize(amount)
		@amount = amount
	end

	 def check_wallet
    puts "You have $#{amount} in your wallet"
  end

  def wallet_add(bet)
    self.amount += bet
    check_wallet
  end
  
  def wallet_subtract(bet)
    self.amount -= bet
    check_wallet
  end
end

