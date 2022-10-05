require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './classroom'
require_relative './person'
require 'json'
require 'pry'
class App
  attr_accessor :people, :books, :rentals, :classroom

  def initialize
    @people = []
    @books = []
    @rentals = []
    @classroom = 'No Class'
    load_people
    load_books
    load_rentals
  end

  #get people from the persons.json file and load them to the app
  def load_people
    people_file = File.read('./persons.json')
    if people_file.length > 0
      new_people = JSON.parse(people_file)
      new_people.each do |person|
        if person['class'] == 'Student'
          student = Student.new(person['age'], person['name'],
                                parent_permission: person['parent_permission'])
          @people.push(student)
        end
        if person['class'] == 'Teacher'
          teacher = Teacher.new(person['age'], person['specialization'], person['name'])
          @people.push(teacher)
        end
      end
    end   
  end

  #add people in persons.json file for future use 
  def register_person
    registered_persons = []
    @people.each do |person|
      if person.class.to_s == 'Teacher'
        registered_persons.push({ class: 'Teacher', age: person.age, specialization: person.specialization,
                            name: person.name })
      end

      if person.class.to_s == 'Student'
        registered_persons.push({class:"Student", age: person.age, parent_permission: true, name: person.name })
      end
    end
    File.write('./persons.json', JSON.dump(registered_persons))
  end

  # load all book in the app from books.json
  def load_books
    book_file = File.read('./books.json')
    books = JSON.parse(book_file)
    books.each do |book|
      book_found = Book.new(book['title'], book['author'])
      @books.push(book_found)
    end
  end

    # add books in books.json file for future use
    def register_books
      registered_books = []
      @books.each do |book|
        registered_books.push({ title: book.title, author: book.author })
      end
      File.write('./books.json', JSON.dump(registered_books))
    end

      #load rentals from rentals.json file
  def load_rentals()
    rentals_file = File.read('./rentals.json')
    if (rentals_file.length > 0)
      new_rentals = JSON.parse(rentals_file)
      new_rentals.each do |r|
       binding.pry()
       rental = Rental.new(@books[r['book_index']],@people[r['person_index']])
       binding.pry()
       rentals.push(rental)
      end
    end
  end

  def list_books
    if @books.length.positive?
      books.each { |book| puts "Title: \"#{book.title}\", Author: #{book.author}" }
    else
      puts 'No books added.'
    end
  end

  def list_people
    if @people.length.positive?
      people.each do |person|
        puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
      end
    else
      puts 'No people added.'
    end
  end

  def create_student(age, name, parent_permission)
    student = Student.new(age, name, parent_permission: parent_permission)
    @people.push(student)
    puts 'Student created successfully'
  end

  def create_teacher(age, specialization, name)
    teacher = Teacher.new(age, specialization, name)
    @people.push(teacher)
    puts 'Teacher created successfully'
  end

  def create_book(title, author)
    book = Book.new(title, author)
    @books.push(book)
    puts 'Book created successfully'
  end

  def create_rental(person_index, book_index)
    puts @people[person_index].name
    rental = Rental.new(@books[book_index],@people[person_index])
    rental.p_i = person_index
    rental.b_i = book_index
    @rentals.push(rental)
    
    puts 'Rental created successfully'
  end

  def list_rentals_by_id(person_id)
    arr = []
    rentals.each do |r|
      if r.book.id == person_id.to_i
        arr.push(r.book.title)
      else
        p 'Nothing found'
      end
    end
    return unless arr.length.positive?

    p '##### Rentals founds #########'
    arr.each { |rfound| p "- #{rfound}" }
  end
end
