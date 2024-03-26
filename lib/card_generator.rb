class CardGenerator 

    attr_reader :file

    def initialize(filename)
        @filename = File.read
        @deck = []
    end

    def file_data
        File.read(@filename).split
    end
end

# this class is initiated by a new round with an argument of a txt file that has questions, answers, and categories
# when a new instance of this class is initiated I want a file to be read and values taken out of it creating new cards
# then I want those card to be put in a new deck of cards