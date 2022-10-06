require_relative '../classroom'
require_relative '../student'

describe Classroom do
  before(:each) do
    @classroom = Classroom.new('Ruby Module')
    @student = Student.new(14, 'Jade')
  end

  it 'Check if classroom is an instance of classroom class' do
    expect(@classroom).to be_an_instance_of(Classroom)
  end

  it 'returns the correct label' do
    expect(@classroom.label).to eq('Ruby Module')
  end

  it 'Check if the label is given' do
    expect(@classroom.label).not_to be_empty
  end

  it 'Check if we can add successfuly a student in the classroom' do
    @classroom.add_student(@student)
    expect(@classroom.students.length).to eq 1
  end
end
