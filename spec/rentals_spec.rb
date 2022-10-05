require_relative '../book'
require_relative '../person'
require_relative '../rental'

describe Rental do
  before(:each) do
    @person = Person.new(14, 'Jade')
    @book = Book.new('Rich Dad Poor Dad', 'Robert KIYOSAKI')
    @rental = Rental.new(@person, @book)
  end

  it 'Check date of creation of the rental' do
    today_date = Time.new.strftime('%Y-%m-%d %H:%M:%S')
    expect(@rental.date).to eq today_date
  end

  it 'Check the name of the person who rent the book' do
    expect(@rental.book.name).to eq 'Jade'
  end

  it 'Check if book is an instance of Book class' do
    expect(@book).to be_instance_of(Book)
  end

  it 'Check if the person has parent permission set to true as it is by default' do
    expect(@rental.book.parent_permission).to eq true
  end
end