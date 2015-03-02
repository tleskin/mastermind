require 'colorize'

module Printer

  def self.greeting
  puts "\n"
  puts "Welcome to".green
  puts'  /\/\   __ _ ___| |_ ___ _ __ _ __ ___ (_)_ __   __| | '.blue
  puts' /    \ / _` / __| __/ _ \  __|  _ ` _ \| |  _ \ / _` | '.green
  puts'/ /\/\ \ (_| \__ \ ||  __/ |  | | | | | | | | | | (_| | '.red
  puts'\/    \/\__,_|___/\__\___|_|  |_| |_| |_|_|_| |_|\__,_| '.yellow
  puts "By: Thomas Leskin".cyan
end

  def self.menu
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.start_game
    "\nI have generated a beginner sequence with four elements made up of:" + " (r)ed".colorize(:red) + "," + " (g)reen".colorize(:green) + "," + " (b)lue".colorize(:blue) + " and " + "(y)ellow".colorize(:yellow) +
    ".
Use (q)uit at any time to end the game.
What's your guess?"
  end

  def self.start_cheat_game(secret)
    "\nI have generated a beginner sequence with the four elements #{secret} made up of:" + " (r)ed".colorize(:red) + "," + " (g)reen".colorize(:green) + "," + " (b)lue".colorize(:blue) + " and " + "(y)ellow".colorize(:yellow) +
    ".
Use (q)uit at any time to end the game.
What's your guess?"
  end

  def self.goodbye
    "Goodbye!"
  end


  def self.input_from_guess(input, number_correct_colors, number_correct_positions)

    "\n'#{input}' has #{number_correct_colors} correct elements in #{number_correct_positions} correct positions."
  end

  def self.number_of_guesses(guesses)
    "You taken #{guesses} guess(es)."
  end

  def self.guessed_sequence(secret, number_guesses, stop_time = 0, start_time =0)
    "\nCongratulations! You guessed the sequence '#{secret}' in #{number_guesses} guess(es) over #{stop_time - start_time} seconds!"
  end

  def self.instructions
    "\nIn the game, the computer picks a sequence of colors." +
    "\nThe number of colors is the code length. The default code length is 4." +
    "\nThe objective of the game is to guess the exact positions" +
    "\nof the colors in the secret sequence. Any color can be used" +
    "\nany number of times in the code sequence." +
    "\nAfter typing in your guess and pressing Enter, the computer responds with" +
    "\nthe result of your guess. For each element in your guess that is of the correct" +
    "\ncolor and correct position in the code sequence, the computer will display" +
    "\na message."
  end

  def self.too_short
    "Your guess is too short!"
  end

  def self.too_long
    "Your guess is too long!"
  end

  def self.ready
  "\nReady to (p)lay or want to (q)uit?"
  end

  def self.input
    "> "
  end


end
