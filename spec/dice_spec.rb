require 'dice'

describe Dice do

  let(:dice) { Dice.new }

  it 'should be able to roll' do
    expect(dice).to respond_to(:roll)
  end

  context 'when rolling dice' do
    
    it 'should give number between 1 and 6' do
      expect(dice.roll).to be_between(1, 6)
    end

  end

end
