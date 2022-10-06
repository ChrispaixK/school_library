require_relative '../student'

describe Student do
    before(:each) do
      @student = Student.new(30, 'Dennis')
    end
    it 'Should return the specialization of the teacher as a dentist' do
      expect(@student.age).to eq 30
    end
    # it 'Should return the age of the teacher as 30' do
    #   expect(@student.age).to eq 30
    # end
    # it 'Should return the name of the teacher as Samuel' do
    #   expect(@student.name).to eq 'Samuel'
    # end
    # it 'Check if teacher is an instance of the Teacher class' do
    #   expect(@student).to be_an_instance_of Student
    # end
    # it 'Check if teacher has parent permission' do
    #   expect(@student.parent_permission).to eq true
    # end
  end
  