require_relative './app'
require_relative './options'
require_relative './actions'


def main
  app = App.new
  option = 0
  puts 'Welcome to the Rental School Library App!'
  while option != 7
    Option.print_options
    option = gets.chomp.to_i
    if option.positive? && option < 7
      call_actions(option, app)
    elsif option == 7
      puts 'See you later!'
    else
      puts 'Invalid option'
    end
  end
end

main
