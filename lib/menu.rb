require_relative 'game_setup'

class Menu

  def execute(input)

    setup = GameSetup.new

    if input == "p" || input == "play"

      input = setup.game_run

      if input == "q"
        response = Response.new(message: "\nYou are leaving the game.", status: :won)
      else
        response = Response.new(:message => "You win!", :status => :won)
      end

    elsif input == "c" || input == "cheat"
      setup.cheat_game
      response = Response.new(:message => "You win!", :status => :won)

    elsif input == "i" || input == "instructions"
      puts Printer.instructions
      puts Printer.ready
      print Printer.input

      input = gets.chomp

        if input == "p" || input == "play"
          setup.game_run
          if input == "q"
            puts input
            response = Response.new(message: "You are leaving the game.", status: :won)
          else
            response = Response.new(:message => "You win!", :status => :won)
          end
        elsif input == "c" || input == "cheat"
          setup.cheat_game
          response = Response.new(:message => "You win!", :status => :won)
        else
          response = Response.new(message: "You are leaving the game.", status: :won)
        end

    elsif input == "q"
      response = Response.new(message: "You are leaving the game.", status: :won)
    end

  end

end
