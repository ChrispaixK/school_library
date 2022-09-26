require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization)
    super(age)
    @specialization = specialization
  end

  def can_use_services
    true
  end
end
