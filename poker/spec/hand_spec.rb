require 'hand.rb'
require 'deck.rb'

describe 'Hand' do
    subject (:deck){Deck.new}
    let(:hand){Hand.new(deck.deal)}

    it 'returns an array of cards' do
        expect(hand.hand.is_a?(Array)).to eq(true)
    end

    it 'returns exactly 5 cards' do
        expect(hand.hand.length).to eq(5)
        expect(hand.hand.all? {|card| card.is_a?(Card)}).to eq(true)
    end
end