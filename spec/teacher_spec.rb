require_relative '../teacher.rb'

describe Teacher do
    before(:each) do
        @teacher = Teacher.new(30,'Dentist', 'Samuel')
    end
    it "Should return the specialization of the teacher as a dentist" do
        expect(@teacher.specialization).to eq 'Dentist'
    end
end