class Card

  SUITS = [:spade, :diamond, :heart, :club]
  attr_reader :suit, :value
  def initialize(suit,value)
    @suit = suit
    @value = value
  end

  def inspect
    "#{@suit} #{@value}"
  end

  def self.suits
    SUITS
  end

end