require 'student'

describe Student do

  let(:student) { Student.new }

  it 'saves name to array' do
    expect(student.save_name("Steve")).to eq(["Steve"])
  end

end
