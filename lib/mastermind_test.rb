require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'mastermind'

class MastermindTest < Minitest::Test
  def test_it_exists
    assert Mastermind
  end

  def test_it_wins
    skip
    mm = Mastermind.new
    result = mm.execute("BBGB")
    assert result.message.include?("win")
  end

  def test_it_asks_the_user_to_guess_again
    skip
    mm = Mastermind.new
    result = mm.execute("BBBB")
    assert result.message.downcase.include?("again")
  end

  def test_it_quits
    mm = Mastermind.new
    response = mm.execute("q")
    assert_equal "You are leaving the game.", response.message
  end


end
