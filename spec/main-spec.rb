require './main.rb'


describe 'draw_card' do
    it 'selects a random card from the deck array' do
        expect(draw_card(20)).to be_between(0, 19)
    end
end

