require 'dice'

describe Dice do

  let(:dice) { Dice.new }

  it 'should be able to roll' do
    expect(dice).to respond_to(:roll)
  end

  context 'when rolling single dice' do
    
    it 'should give number between 1 and 6' do
      expect(dice.roll).to be_between(1, 6)
    end

  end

  context 'when rolling mutiple dice' do

    it 'should roll twice' do
      expect(dice).to receive(:roll).twice
      dice.throw(2)
    end

    it 'should roll four times' do
      expect(dice).to receive(:roll).exactly(4).times
      dice.throw(4)
    end

    it 'should output result of throws' do
      message = "You rolled: 2 & 2"
      expect { dice.throw(2) }.to output(message).to_stdout
    end

  end

end
