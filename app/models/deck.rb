class Deck
  attr_reader :cards

  VALUES = ( 1..10 ).to_a + [ 'J', 'Q', 'K' ]
  SUITS  = %w/ ♠ ♥ ♦ ♣ /

  def initialize
    @cards = SUITS.map do | s |
               VALUES.map do | v |
                 Card.new s,v
               end
             end.flatten.shuffle
  end

  def size
    @cards.count
  end
end