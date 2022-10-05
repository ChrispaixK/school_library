require_relative '../rental'

describe Person do
  before(:each) do
    @person = Person.new(54, 'George')
    @book = Book.new('Blind Trust', 'Ed Millan')
  end

  it 'Check if the name of person is correct'do
    expect(@person.name).to eq('George')
  end

  it 'Check if the age of person is correct'do
    expect(@person.age).to eq(54)
  end

  it 'Test if there is an ID generated automatically' do
    expect(@person.id).to be_truthy
  end

  it 'Test if person is an instance of Person class' do
    expect(@person).to be_instance_of(Person)
  end

  it 'Check the access of Person instance to can use service method' do
    expect(@person.can_use_services).to be_truthy
  end

  it 'Check the access of Person instance to can use service method' do
    expect(@person.correct_name).to eq ("George")
  end

end