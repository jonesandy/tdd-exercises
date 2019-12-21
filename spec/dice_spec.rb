require 'dice'

describe Dice do

  let(:dice) { Dice.new }

  it 'should have a method called roll' do
    expect(dice).to respond_to(:roll)
  end

end
