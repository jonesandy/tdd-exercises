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

  it 'returns 3 when average of last 3 scores' do
    3.times { student.track_motivation(3) }
    expect(student.motivation_history).to eq("Average of last three scores is: 3")
  end

  it 'returns 4 when average of last 3 scores' do
    student.track_motivation(3)
    student.track_motivation(4)
    student.track_motivation(5)
    expect(student.motivation_history).to eq("Average of last three scores is: 4")
  end

end
