require_relative 'response'
require_relative 'printer'
require_relative 'evaluator'

class GameSetup

  attr_accessor :counter

  def initialize
    @available_colors = ['R', 'B', 'Y', 'G']
    @counter = 0
  end

  def generate_secret_sequence
      Array.new(4){@available_colors.sample}.join
  end

  def time
    Time.new
  end

  def add_to_count
    @counter += 1
  end

  def game_run
    evaluator = Evaluator.new
    secret = generate_secret_sequence
    start_time = time
    puts Printer.start_game
    print Printer.input
    input = evaluator.user_input_checker_and_upcaser(gets.chomp, secret)

    until input == secret || input == "q"
      number_correct_colors = evaluator.guess_correct_colors(secret, input)
      number_correct_positions = evaluator.guess_correct_positions(secret, input)

      puts Printer.input_from_guess(input, number_correct_colors, number_correct_positions)
      puts Printer.number_of_guesses(add_to_count)

      response = Response.new(:message => "Guess again!", :status => :continue)
      puts response.message
      print Printer.input
      input = evaluator.user_input_checker_and_upcaser(gets.chomp, secret)
    end

    if input == "q"
      return input
    else
      stop_time = time
      add_to_count
      puts Printer.guessed_sequence(secret, counter, stop_time, start_time)
    end
  end

  def cheat_game
    secret = generate_secret_sequence
    start_time = time
    stop_time = time
    puts Printer.guessed_sequence(secret, counter)
  end
end
