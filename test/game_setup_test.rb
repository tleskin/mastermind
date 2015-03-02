require 'minitest/autorun'
require 'minitest/emoji'
require '../lib/game_setup'

class GameSetupTest < Minitest::Test

  def setup
    @setup = GameSetup.new
  end

  def test_it_exists
    assert GameSetup
  end

  def test_it_generates_a_sequence_with_four_letters
    sequence = @setup.generate_secret_sequence
    assert_equal 4, sequence.length
  end

  def test_it_sets_an_inital_guess_count_of_zero
    assert_equal 0, @setup.counter
  end

  def test_it_can_add_to_the_count
    assert_equal 1, @setup.add_to_count
  end

  def test_it_can_tell_time
    assert @setup.time
  end

  def test_it_wins_cheat_game
    skip
    assert_equal
  end

end
