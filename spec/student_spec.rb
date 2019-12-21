require 'student'

describe Student do

  let(:student) { Student.new }

  it 'saves name to array' do
    expect(student.save_name("Steve")).to eq(["Steve"])
  end

  it 'saves my motivation score' do
    expect(student.track_motivation(3)).to eq([3])
  end

end
