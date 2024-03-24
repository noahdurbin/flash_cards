class Card

    attr_reader :question, 
                :answer, 
                :category
    
    def initialize(question, answer, category)
        @question = question
        @answer = answer
        @category = category
    end

    #Sample questions to use in the terminal game
    question_1 = Card.new("How many bones are there in the human body?", "206", :Biology)
    question_2 = Card.new("What is the name of the longest river in South America?", "Amazon River", :Geography)
    question_3 = Card.new("What does Na stand for on the periodic table?", "Salt", :Science)
end