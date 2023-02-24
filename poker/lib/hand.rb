# require_relative 'deck.rb'

class Hand
    attr_reader :hand

    def initialize(hand)
        @hand = hand
    end

    def >(other_hand)
    end

    def suit_hash
        # count = 0
        hash = Hash.new(0)
        hand.each do |card|
            card.suit += 1
            # count += 1
        end
        hash.has_value?(5)
    end

    def value_hash
        hash = Hash.new(0)
        hand.each do |card|
            card.face_value += 1
        end
        return hash
    end
end

#single card (no duplicates) = (Ace, nil, nil, nil, nil)
#pair (1 set of duplicates) = (Ace, Ace, nil, nil, nil)
#two pair (2 set of duplicates) = (Ace, Ace, King, King, nil)
#triple (1 set of 3 duplicates) = (Ace, Ace, Ace, nil, nil)
#straight (5 consecutive in value) = (Ace, King, Queen, Jack, Ten)
#flush (5 of the same suit) = (Spade, Spade, Spade, Spade, Spade) => Single card logic
#Full House (triple + pair) = (Ace, Ace, Ace, King, King)
#Quad (1 set of 4 duplicates, any single) = (Ace, Ace, Ace, Ace, King)
#Straight Flush/Royal Flush (Straight of same suit) = (Ace/Spade, King/Spade, Queen/Spade, Jack/Spade, 10/Spade) = (Same/Heart)


