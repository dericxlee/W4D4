require 'card.rb'

describe 'Card' do
    let (:card) {Card.new("spade", 9)}

    it 'returns suit' do
        expect(card.suit).to eq('spade')
    end

    it 'returns face value' do
        expect(card.face_value).to eq(9)
    end
end
