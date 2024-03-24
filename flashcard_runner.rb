require './lib/card.rb'
require './lib/turn.rb'
require './lib/round.rb'
require './lib/deck.rb'

question_1 = Card.new("How many bones are there in the human body?", "206", :Biology)
question_2 = Card.new("What is the name of the longest river in South America?", "Amazon River", :Geography)
question_3 = Card.new("What does Na stand for on the periodic table?", "Salt", :Science)
question_4 = Card.new("What temperature (in Fahrenheit) does water freeze at?", "32 Degrees", :Science)

deck_1 = Deck.new([question_1, question_2, question_3, question_4])

round_1 = Round.new(deck_1)

#game starts here

def start(round_1, deck_1)
    puts "Welcome! You're playing with #{deck_1.count} cards."
    puts "-" * 40
    
    puts "Question: #{round_1.current_card.question}"
    round_1.take_turn(gets.chomp)
    turn = round_1.turns.last
    turn.correct?
    puts turn.feedback
end

start(round_1, deck_1)