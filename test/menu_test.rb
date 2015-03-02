require 'minitest/autorun'
require 'minitest/emoji'
require '../lib/menu'

class MenuTest < Minitest::Test

  def test_it_exists
    assert Menu
  end

  def test_it_wins
    skip
    menu = Menu.new
    result = menu.execute("BBGB")
    assert result.message.include?("win")
  end

  def test_it_asks_the_user_to_guess_again
    skip
    menu = Menu.new
    result = menu.execute("BBBB")
    assert result.message.downcase.include?("again")
  end

  def test_it_quits
    menu = Menu.new
    response = menu.execute("q")
    assert_equal "You are leaving the game.", response.message
  end


end
