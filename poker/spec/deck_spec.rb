require 'deck.rb'

describe 'Deck' do
    let (:deck){Deck.new}

    it 'starts at exactly 52 cards' do
        expect(deck.cards.length).to eq(52)
    end

    it 'contains only card instances' do
        expect(deck.cards.all? {|card| card.is_a?(Card)}).to eq(true)
    end
end

describe 'deal' do
    let (:deck){Deck.new}

    it 'generates a hand with exactly 5 cards' do
        expect(deck.deal.length).to eq(5)
    end

    it 'generates a hand with only card instances' do
        expect(deck.deal.all? {|card| card.is_a?(Card)}).to eq(true)
    end
end

describe 'deck_count' do
    let (:deck){Deck.new}

    it 'returns an integer' do
        expect(deck.deck_count.is_a?(Integer)).to eq(true)
    end
end

