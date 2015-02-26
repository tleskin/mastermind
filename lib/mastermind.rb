require_relative 'response'
require_relative 'printer'
require_relative 'evaluator'

class Mastermind

  attr_reader :secret

  def execute(input)
    evaluator = Evaluator.new
    @secret = evaluator.generate_secret_sequence

    if input == "p"
      evaluator = Evaluator.new
      puts Printer.start_game
      print "> "
      input = gets.chomp
      evaluator.user_input_checker_and_upcaser(input)

      until input == secret
        response = Response.new(:message => "Guess again!", :status => :continue)
        puts response.message
        input = gets.chomp
        evaluator.user_input_checker_and_upcaser(input)
      end

      Response.new(:message => "You Win!", :status => :won)

    elsif input == "c"
      puts Printer.start_cheat_game(secret)
      print "> "
      input = gets.chomp
      Evaluator.user_input_checker_and_upcaser(input)

      until input == secret
        response = Response.new(:message => "Guess again!", :status => :continue)
        puts response.message
        input = gets.chomp
        end

      Response.new(:message => "You Win!", :status => :won)
    elsif input == "i"
    elsif input == "q"
      Response.new(:message => "You are leaving the game.", :status => :won)
    end

  end

end

# takes input
# passes to evaluator class
