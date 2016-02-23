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
  
  def drop_wallet
    self.wallet = nil
    puts "Uhoh, you lost your wallet"
    check_wallet
  end

  def find_money
    self.wallet = wallet_add(rand(1..1000))
    puts "Oh snap, you found some flow!"
    check_wallet
  end 

end

