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

end
