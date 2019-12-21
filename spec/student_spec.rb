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

  it 'returns average of last 3 scores' do
    3.times { student.track_motivation(3) }
    expect(student.motivation_history).to eq(3)
  end

end
