require_relative '../book'

describe Book do
  before(:each) do
    @book = Book.new('Petit Prince', 'Antoine de St Exupery')
  end

  describe 'testing Book class' do
    it 'verify if book is an instance of Book' do
      expect(@book).to be_an_instance_of(Book)
    end
    
    it 'returns the correct title' do
      expect(@book.title).to eq('Petit Prince')
    end

    it 'returns the correct author' do
      expect(@book.author).to eq('Antoine de St Exupery')
    end
  end

end