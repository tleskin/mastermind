require_relative 'game_setup'

class Menu

  def execute(input)

    setup = GameSetup.new

    if input == "p" || input == "play"
      setup.game_run
      Response.new(:message => "You win!", :status => :won)

    elsif input == "c" || input == "cheat"
      setup.cheat_game
      Response.new(:message => "You Win!", status: :won)

    elsif input == "i" || input == "instructions"
      puts Printer.instructions
      puts Printer.ready
      print Printer.input

      input = gets.chomp

        if input == "p" || input == "play"
          setup.game_run
          Response.new(message: "You win!", status: :won)
        elsif input == "c" || input == "cheat"
          setup.cheat_game
          response = Response.new(message: "You win!", status: :won)
        else
          response = Response.new(message: "Have a great day!", status: :won)
        end

    elsif input == "q"
      response = Response.new(message: "You are leaving the game.", status: :won)
    end

  end

end
