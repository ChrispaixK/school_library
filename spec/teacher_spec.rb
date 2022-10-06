require_relative '../teacher.rb'

describe Teacher do
    before(:each) do
        @teacher = Teacher.new(30,'Dentist', 'Samuel')
    end
    it "Should return the specialization of the teacher as a dentist" do
        expect(@teacher.specialization).to eq 'Dentist'
    end
    it "Should return the age of the teacher as 30" do
        expect(@teacher.age).to eq 30
    end
    it "Should return the name of the teacher as Samuel" do
        expect(@teacher.name).to eq 'Samuel'
    end
    it "Check if teacher is an instance of the Teacher class" do
        expect(@teacher).to be_an_instance_of Teacher
    end
    it "Check if teacher has parent permission" do
        expect(@teacher.parent_permission).to eq true
    end
end