#Card Class
class Card
 # Getter and Setter methods for rank, suit
 attr_accessor :rank, :suit
 # Gets called when you call the new method to create an instance
 # card = Card.new('10', 'K', 'Black')
 def initialize(rank, suit)
   @rank = rank
   @suit = suit
 end
end


#Deck Class
class Deck
 # Getter and Setter methods for rank, suit and color
 attr_accessor :cards
 # Gets called when you call the new method to create an instance
 # deck = Deck.new
 def initialize
   @ranks = %w(Ace 2 3 4 5 6 7 8 9 10 Jack Queen King)
   @suits = %w(Spades Diamonds Clubs Hearts)
   @cards = []
   generate_deck
 end
 
 def generate_deck
   @suits.each do |suit|
     @ranks.size.times do |i|
       @cards << Card.new(@ranks[i], suit,)
     end
   end
 end
 
end

d = Deck.new

puts d.inspect
