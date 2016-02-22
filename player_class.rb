class Player
  attr_accessor :wallet
  attr_reader :name
  def initialize(name,wallet)
    @name = name
    @wallet = wallet
  end


def check_wallet
  puts wallet
end

end

jake = Player.new("Jake",40.00)
jake.check_wallet


