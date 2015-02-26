require_relative 'mastermind'
require_relative 'printer'


puts Printer.greeting
puts Printer.menu

mastermind = Mastermind.new
response = nil

until response && response.status == :won
  print "> "
  input = gets.chomp
  response = mastermind.execute(input)
  puts response.message
end

puts "Goodbye!"
