require_relative './nameable'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission
  attr_reader :id

  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Time.new.to_i
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = name
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
end
