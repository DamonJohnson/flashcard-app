require './main.rb'

describe 'draw_card' do
    it 'returns a random number between 1 and 20' do
        expect(draw_card(20)).to be_between(1, 20)
    end
end

describe 'study' do
    it 'returns a random number between 1 and 20' do
        expect(draw_card(20)).to be_between(1, 20)
    end
end