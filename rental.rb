require './person'
require './book'

class Rental
  attr_accessor :date, :book, :person

  def initialize(book, person)
    @date = Time.new.strftime('%Y-%m-%d %H:%M:%S')
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
  end
end
