require_relative 'menu'

puts Printer.greeting
puts Printer.menu

menu = Menu.new
response = nil

until response && response.status == :won
  print Printer.input
  input = gets.chomp
  response = menu.execute(input)
  puts response.message
end

puts Printer.goodbye
