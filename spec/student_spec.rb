require 'student'

describe Student do

  let(:student) { Student.new }

  it 'saves name to array' do
    expect(student.save_name("Steve")).to eq(["Steve"])
  end

  it 'saves my motivation score' do
    expect(student.track_motivation(3)).to eq([3])
  end

  it 'returns array of motivations' do
    student.track_motivation(3)
    expect(student.track_motivation(5)).to eq([3, 5])
  end

end
