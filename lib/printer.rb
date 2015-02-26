require 'colorize'

module Printer

  def self.greeting
    "Welcome to Mastermind"
  end

  def self.menu
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def self.start_game
    "I have generated a beginner sequence with four elements made up of:" + " (r)ed".colorize(:red) + "," + " (g)reen".colorize(:green) + "," + " (b)lue".colorize(:blue) + " and " + "(y)ellow".colorize(:yellow) +
    ".
Use (q)uit at any time to end the game.
What's your guess?"
  end

  def self.start_cheat_game(secret)
    "I have generated a beginner sequence with the four elements #{secret} made up of:" + " (r)ed".colorize(:red) + "," + " (g)reen".colorize(:green) + "," + " (b)lue".colorize(:blue) + " and " + "(y)ellow".colorize(:yellow) +
    ".
Use (q)uit at any time to end the game.
What's your guess?"
  end

  def self.goodbye
    "Goodbye!"
  end

end
