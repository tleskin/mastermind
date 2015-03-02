require_relative 'mastermind'

puts Printer.greeting
puts Printer.menu

mastermind = Mastermind.new
response = nil

until response && response.status == :won
  print Printer.input
  input = gets.chomp
  response = mastermind.execute(input)
  puts response.message
end

puts Printer.goodbye
