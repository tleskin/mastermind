require 'minitest/autorun'
require 'minitest/pride'
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
    assert_equal "Please enter a valid sequence!", @evaluator.user_input_checker_and_upcaser("RRR")
  end

  def test_it_checks_user_input_does_have_four_letters
    assert_equal "RRRR", @evaluator.user_input_checker_and_upcaser("RRRR")
  end

  def test_it_checks_user_input_for_four_letters_and_returns_upcase_version
    assert_equal "RRRR", @evaluator.user_input_checker_and_upcaser("rrrr")
  end

end
