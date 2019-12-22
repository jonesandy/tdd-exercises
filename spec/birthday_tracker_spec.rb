require 'birthday_tracker'

describe BirthdayTracker do

  let(:tracker) { BirthdayTracker.new }

  it 'should store a birthday' do
    value = [{name: "Andy Jones", birthday: "01/01/1980"}]
    expect(tracker.store("Andy Jones", "01/01/1980")).to eq(value)
  end

  it 'should print out a list' do
    tracker.store("Paul McCartney", "01/01/1980")
    tracker.store("John Lennon", "01/01/1981")
    expect { tracker.print }.to output("Paul McCartney 01/01/1980\nJohn Lennon 01/01/1981\n").to_stdout
  end

end
