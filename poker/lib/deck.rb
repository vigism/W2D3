require_relative 'card.rb'

class Deck
  
  Card::SUITS

  Card.suits.each do |i|
  end

  def initialize
    @all_cards = []
    create_deck
  end

  def create_deck
    suits = ['spade','diamond','heart','club']
    values = (1..13).to_a
    Card.suits.each do |suit|
      values.each do |value|
        card = Card.new(suit,value)
        @all_cards << card
      end
    end
  end

  def shuffle
    @all_cards.shuffle!
  end
  
end