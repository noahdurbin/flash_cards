require './lib/round'
require './lib/deck'
require './lib/card'
require './lib/turn'

RSpec.describe Round do
    it 'exists' do
        card1 = Card.new('Question 1', 'Answer 1', :category1)
        card2 = Card.new('Question 2', 'Answer 2', :category2)
        deck = Deck.new([card1, card2])
        round = Round.new(deck)

        expect(round).to be_a(Round)
    end

    it 'can find the first card in deck' do
        card1 = Card.new('Question 1', 'Answer 1', :category1)
        card2 = Card.new('Question 2', 'Answer 2', :category2)
        deck = Deck.new([card1, card2])
        round = Round.new(deck)

        expect(round.current_card).to eq(card1)
    end

    it 'can take a turn' do
        card1 = Card.new('Question 1', 'Answer 1', :category1)
        card2 = Card.new('Question 2', 'Answer 2', :category2)
        deck = Deck.new([card1, card2])
        round = Round.new(deck)

        expect(round.take_turn('Answer 1')).to be_a(Turn)
    end
end