require 'minitest/autorun'
require 'minitest/emoji'
require '../lib/printer'

class PrinterTest < Minitest::Test

  def test_it_exists
    Printer
    assert true
  end

  def test_it_returns_the_menu
    assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", Printer.menu
  end

  def test_it_returns_the_start_game_message
    skip
    assert_equal "I have generated a beginner sequence with four elements made up of:" + " (r)ed".colorize(:red) + "," + " (g)reen".colorize(:green) + "," + " (b)lue".colorize(:blue) + " and " + "(y)ellow".colorize(:yellow) +
    ".
Use (q)uit at any time to end the game.
What's your guess?", Printer.start_game
  end


  def test_it_returns_the_start_cheat_game_message
    skip
    assert_equal "I have generated a beginner sequence with the four elements RRRR made up of:" + " (r)ed".colorize(:red) + "," + " (g)reen".colorize(:green) + "," + " (b)lue".colorize(:blue) + " and " + "(y)ellow".colorize(:yellow) +
    ".
Use (q)uit at any time to end the game.
What's your guess?", Printer.start_cheat_game("RRRR")
  end

  def test_it_says_goodbye
    assert_equal "Goodbye!", Printer.goodbye
  end
end
