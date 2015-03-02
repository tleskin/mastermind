require 'minitest/autorun'
require 'minitest/emoji'
require '../lib/evaluator'

class EvaluatorTest < Minitest::Test

  def setup
    @evaluator = Evaluator.new
  end

  def test_it_exists
    assert Evaluator
  end

  def test_it_checks_user_input_does_not_have_four_letters
    skip
    assert_equal "Please enter a valid sequence!", @evaluator.user_input_checker_and_upcaser("RRR")
  end

  def test_it_checks_user_input_does_have_four_letters
    assert_equal "RRRR", @evaluator.user_input_checker_and_upcaser("RRRR")
  end

  def test_it_checks_user_input_for_four_letters_and_returns_upcase_version
    assert_equal "RRRR", @evaluator.user_input_checker_and_upcaser("rrrr")
  end

  def test_the_user_input_has_two_correct_colors_at_beginning_of_string
    assert_equal 2, @evaluator.guess_correct_colors("RRGG", "RRYY")
  end

  def test_the_user_input_has_no_correct_colors
    assert_equal 0, @evaluator.guess_correct_colors("RRGG", "BBBB")
  end

  def test_the_user_input_has_two_correct_colors_at_end_of_string
    assert_equal 2, @evaluator.guess_correct_colors("RRGG", "YYRR")
  end

  def test_the_user_input_has_three_correct_colors_at_end_of_string
    assert_equal 3, @evaluator.guess_correct_colors("RGGG", "YGGG")
  end

  def test_the_user_input_has_three_correct_colors_at_beginning_of_string
    assert_equal 3, @evaluator.guess_correct_colors("GGGR", "GGGY")
  end

  def test_the_user_input_has_two_correct_colors_in_the_middle_of_string
    assert_equal 2, @evaluator.guess_correct_colors("RRGG", "YRRY")
  end

  def test_the_user_input_has_two_correct_positions
    assert_equal 2, @evaluator.guess_correct_positions("RRGG", "RRYY")
  end

  def test_the_user_input_has_no_correct_positions
    assert_equal 0, @evaluator.guess_correct_positions("RRGG", "BBBB")
  end

end
