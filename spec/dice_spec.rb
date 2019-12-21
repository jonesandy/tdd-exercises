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
    srand(2)

    it 'should roll twice' do
      expect(dice).to receive(:roll).twice
      dice.throw(2)
    end

    it 'should roll four times' do
      expect(dice).to receive(:roll).exactly(4).times
      dice.throw(4)
    end

    it 'should output 6 and 1' do
      message = "You rolled: 6 & 1"
      expect { dice.throw(2) }.to output(message).to_stdout
    end

    it 'should output 4 and 3 and 4' do
      message = "You rolled: 4 & 3 & 4"
      expect { dice.throw(3) }.to output(message).to_stdout
    end

  end

end
