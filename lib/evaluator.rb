class Evaluator

  def initialize
    @available_colors = ['R', 'B', 'Y', 'G']
  end

  def generate_secret_sequence
      Array.new(4){@available_colors.sample}.join
  end

  def user_input_checker_and_upcaser(input)
    until input.length == 4
      puts "Please enter a valid sequence!"
      input = gets.chomp
    end
    input.upcase
  end

end


evaluate = Evaluator.new
puts evaluate.generate_secret_sequence
