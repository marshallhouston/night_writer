require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
# require './lib/night_write'

class TranslatorTest < Minitest::Test

  def test_translator_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  # def test_translator_can_receive_input_from_file_reader
  #   skip
  #   Translator.new
  #   input = @reader
  #
  #   assert_instance_of FileReader, input
  # end

  def test_convert_input_to_individual_characters
    Translator.new
    input = "abcdefg"
    expected_output = ["a", "b", "c", "d", "e", "f", "g"]

    assert_equal expected_output, input.split('')
  end

  def test_find_value_of_one_letter
    translator = Translator.new

    expected_output = ["0.", "..", ".."]
    actual_output = translator.translate_to_braille("a")

    assert_equal expected_output, actual_output
  end

  def test_find_value_of_two_letters
    translator = Translator.new
    input = "aa"

    expected_output = ["0.","..","..","0.","..",".."]
    actual_output = translator.translate_to_braille(input)

    assert_equal expected_output, actual_output
  end

  def test_find_value_of_one_uppercase_letter
    translator = Translator.new
    input = "A"

    expected_output = ["..","..",".0","0.","..",".."]
    actual_output = translator.translate_to_braille(input)

    assert_equal expected_output, actual_output
  end

  def test_find_value_of_two_uppercase_letters
    translator = Translator.new
    input = "AA"

    expected_output = ["..","..",".0","0.","..","..","..","..",".0","0.","..",".."]
    actual_output = translator.translate_to_braille(input)

    assert_equal expected_output, actual_output
  end

  def test_find_value_of_multiple_upper_and_lowercase_letters
    translator = Translator.new
    input = "AbAb"

    expected_output = ["..","..",".0","0.","..","..","0.","0.","..","..","..",".0","0.","..","..","0.","0.",".."]

    actual_output = translator.translate_to_braille(input)

    assert_equal expected_output, actual_output
  end

  def test_find_braille_translation_with_space_included
    translator = Translator.new
    input = "a A"

    expected_output = ["0.","..","..","..","..","..","..","..",".0","0.","..",".."]
    actual_output = translator.translate_to_braille(input)

    assert_equal expected_output, actual_output
  end
end
