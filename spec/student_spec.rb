require_relative '../student'

describe Student do
  before(:each) do
    @student = Student.new(30, 'Dennis')
  end

  it 'Should return the age of the teacher as a 30' do
    expect(@student.age).to eq 30
  end

  it 'Should return the name of the student as Dennis' do
    expect(@student.name).to eq 'Dennis'
  end

  it 'Check if the parent permission is set to true' do
    expect(@student.parent_permission).to eq true
  end

  it 'Expect that s@tudent is an instance of Student class' do
    expect(@student).to be_an_instance_of Student
  end

  it 'Check if @student has acces to play hockey method' do
    expect(@student.play_hooky).to eq '¯\(ツ)/¯'
  end
end
