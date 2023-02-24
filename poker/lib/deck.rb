require_relative 'hand.rb'

class Deck
    SUITS = ['spade', 'heart', 'club', 'diamond']

    attr_reader :cards, :shuffled_deck

    def initialize
        @cards = []
        (2..14).each do |val|
            SUITS.each do |suit|
                @cards << Card.new(suit, val)
            end
        end
        @shuffled_deck = @cards.shuffle
    end

    def deal
        arr = []
        5.times do 
            arr << shuffled_deck.shift
        end
        arr
        #remove 5 cards, initialize Hand instance
    end

    def deck_count
        @shuffled_deck.length
    end
end