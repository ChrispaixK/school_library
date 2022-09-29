require './rental'

class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @id = Time.new.to_i
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
