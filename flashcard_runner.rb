require './lib/card.rb'
require './lib/turn.rb'
require './lib/round.rb'
require './lib/deck.rb'

question_1 = Card.new("How many bones are there in the human body?", "206", :Biology)
question_2 = Card.new("What is the name of the longest river in South America?", "Amazon River", :Geography)
question_3 = Card.new("What does Na stand for on the periodic table?", "Sodium", :Science)
question_4 = Card.new("What temperature (in Fahrenheit) does water freeze at?", "32 Degrees", :Science)

deck_1 = Deck.new([question_1, question_2, question_3, question_4])

round_1 = Round.new(deck_1)


def start(round_1, deck_1)
    puts "Welcome! You're playing with #{deck_1.count} cards."
    puts "-------------------------------------------------"
    total_cards = deck_1.count

    until deck_1.count == 0 do
        puts "This is card number #{round_1.turns.count + 1} out of #{total_cards}"
        puts "Question: #{round_1.current_card.question}"

        round_1.take_turn(gets.chomp)
        turn = round_1.turns.last
        turn.correct?
        puts turn.feedback
        puts "-------------------------------------------------"
    end

    puts "****** Game over! ******"
    puts "You had #{round_1.number_correct} correct guesses out of #{round_1.turns.count} for a total of #{round_1.percent_correct.round}%"
end

#game starts here
start(round_1, deck_1)