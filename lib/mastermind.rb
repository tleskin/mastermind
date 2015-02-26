require_relative 'response'
require_relative 'printer'
require_relative 'evaluator'

class Mastermind

  attr_reader :secret

  def execute(input)
    evaluator = Evaluator.new
    @secret = evaluator.generate_secret_sequence

    if input == "p"
      @start_time = Time.new
      puts Printer.start_game
      print "> "
      input = gets.chomp
      evaluator.user_input_checker_and_upcaser(input)

      until input == secret
        puts "You taken #{evaluator.add_to_count} guess(es)."


        response = Response.new(:message => "Guess again!", :status => :continue)
        puts "For testing, the answer is #{secret}.".colorize(:cyan)
        puts response.message
        input = gets.chomp
        evaluator.user_input_checker_and_upcaser(input)
      end
      @stop_time = Time.new
      puts "You finished in #{@stop_time - @start_time} seconds!"
      Response.new(:message => "You Win!", :status => :won)

    elsif input == "c"
      @start_time = Time.new
      puts Printer.start_cheat_game(secret)
      print "> "
      input = gets.chomp
      evaluator.user_input_checker_and_upcaser(input)

      until input == secret
        puts "You taken #{evaluator.add_to_count} guess(es)."
        response = Response.new(:message => "Guess again!", :status => :continue)
        puts response.message
        input = gets.chomp
        end

      @stop_time = Time.new
      puts "You finished in #{@stop_time - @start_time} seconds!"
      Response.new(:message => "You Win!", :status => :won)

    #elsif input == "i"

    elsif input == "q"
      Response.new(:message => "You are leaving the game.", :status => :won)
    end

  end

end
