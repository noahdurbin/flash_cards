class Round
    attr_reader :deck,
                :turns
    
    def initialize(deck)
        @deck = deck
        @turns = []
    end

    def current_card
        @deck.cards.first
    end

    def take_turn(guess)
        turn = Turn.new(guess, current_card)
        @turns << turn
        @deck.cards.shift
        turn
    end

    def number_correct
        @turns.count { |turn| turn.correct? }
    end

    def number_correct_by_category(category)
        @turns.count { |turn| turn.correct? && turn.card.category == category }
    end

    def percent_correct
        (number_correct.to_f / @turns.count) * 100
    end

    def percent_correct_by_category(category)
        total = @turns count { |turn| turn.card.category == category }
        correct = number_correct_by_category(category)
        (correct.to_f / total) * 100
    end
end