require './person'
require './book'

class Rental
  attr_accessor :date, :book, :person, :p_i, :b_i

  def initialize(book, person)
    @date = Time.new.strftime('%Y-%m-%d %H:%M:%S')
    @book = book
    book.rentals << self
    @person = person
    person.rentals << self
    @p_i = 'not set'
    @b_i = 'not set'
  end
end
