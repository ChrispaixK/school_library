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
   end
  