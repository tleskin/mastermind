class Evaluator

  attr_accessor :counter

  def initialize
    @available_colors = ['R', 'B', 'Y', 'G']
    @counter = 0
  end

  def generate_secret_sequence
      Array.new(4){@available_colors.sample}.join
  end

  def user_input_checker_and_upcaser(input)
    while input.length < 4 || input.length > 4
      puts "Please enter a valid sequence!"
      input = gets.chomp
    end
    input.upcase
  end

  def add_to_count
    @counter += 1
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
    input = input.split('')
    input.select.with_index do |element, index|
      if element == secret[index]
      correct_positions += 1
      end
    end
    return correct_positions
  end

end
