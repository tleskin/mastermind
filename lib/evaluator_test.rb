require 'minitest/autorun'
require 'minitest/emoji'
require_relative 'evaluator'

class EvaluatorTest < Minitest::Test

  def setup
    @evaluator = Evaluator.new
  end

  def test_it_generates_a_sequence_with_four_letters
    sequence = @evaluator.generate_secret_sequence
    assert_equal 4, sequence.length
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

  def test_it_sets_an_inital_guess_count_of_zero
    assert_equal 0, @evaluator.counter
  end

  def test_it_can_add_to_the_count
    assert_equal 1, @evaluator.add_to_count
  end

end
