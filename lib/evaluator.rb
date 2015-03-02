require_relative 'response'

class Evaluator

  def user_input_checker_and_upcaser(input, secret)
    while input.length < 4 || input.length > 4
      if input == "q"
        return input
      elsif input == "c"
        return secret
      elsif input.length < 4
        puts Printer.too_short
      elsif input.length > 4
        puts Printer.too_long
      end
      print Printer.input
      input = gets.chomp
    end
    input.upcase
  end

  def guess_correct_colors(secret, input)
    correct_elements = 0
    secret.each_char do |color|
      if input.include?(color)
        correct_elements += 1
      end
    end
    return correct_elements
  end

  def guess_correct_positions(secret, input)
    correct_positions = 0
    secret = secret.split('')
    input = input.upcase.split('')
    input.select.with_index do |element, index|
      if element == secret[index]
      correct_positions += 1
      end
    end
    return correct_positions
  end

end
