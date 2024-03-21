require './lib/card'
require './lib/deck'

RSpec.describe Deck do

    it 'returns the number of cards in the deck' do
        card1 = Card.new('Question 1', 'Answer 1', :category1)
        card2 = Card.new('Question 2', 'Answer 2', :category2)
        deck = Deck.new([card1, card2])
        
        expect(deck.count).to eq(2)
    end

    it 'returns an array of cards in the specified category' do
        card1 = Card.new('Question 1', 'Answer 1', :category1)
        card2 = Card.new('Question 2', 'Answer 2', :category2)
        card3 = Card.new('Question 3', 'Answer 3', :category1)
        deck = Deck.new([card1, card2, card3])
        
        expect(deck.cards_in_category(:category1)).to eq([card1, card3])
    end

    it 'returns an empty array if no cards are in the specified category' do
        card1 = Card.new('Question 1', 'Answer 1', :category1)
        card2 = Card.new('Question 2', 'Answer 2', :category2)
        deck = Deck.new([card1, card2])
        
        expect(deck.cards_in_category(:category3)).to eq([])
    end
end