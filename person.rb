require_relative './nameable'
require_relative './rental'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id, :rentals

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Time.new.to_i
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = name
    @rentals = []
  end

  def can_use_services
    isof_age || @parent_permission
  end

  def correct_name
    @nameable
  end

  private

  def isof_age
    @age >= 18
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end
