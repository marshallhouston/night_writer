require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test

  def test_translator_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_convert_input_to_individual_characters
    Translator.new
    input = "abcdefg"
    expected = ["a", "b", "c", "d", "e", "f", "g"]
    actual = input.split('')

    assert_equal expected, actual
  end

  def test_find_value_of_one_letter
    translator = Translator.new

    expected = ["0.", "..", ".."]
    actual = translator.translate_to_braille("a")

    assert_equal expected, actual
  end

  def test_find_value_of_two_letters
    translator = Translator.new
    input = "aa"

    expected = ["0.","..","..","0.","..",".."]
    actual = translator.translate_to_braille(input)

    assert_equal expected, actual
  end

  def test_find_value_of_one_uppercase_letter
    translator = Translator.new
    input = "A"

    expected = ["..","..",".0","0.","..",".."]
    actual = translator.translate_to_braille(input)

    assert_equal expected, actual
  end

  def test_find_value_of_two_uppercase_letters
    translator = Translator.new
    input = "AA"

    expected = ["..","..",".0","0.","..","..","..","..",".0","0.","..",".."]
    actual = translator.translate_to_braille(input)

    assert_equal expected, actual
  end

  def test_find_value_of_multiple_upper_and_lowercase_letters
    translator = Translator.new
    input = "AbAb"

    expected = ["..","..",".0","0.","..","..","0.","0.","..","..","..",".0","0.","..","..","0.","0.",".."]

    actual = translator.translate_to_braille(input)

    assert_equal expected, actual
  end

  def test_find_braille_translation_with_space_included
    translator = Translator.new
    input = "a A"

    expected = ["0.","..","..","..","..","..","..","..",".0","0.","..",".."]
    actual = translator.translate_to_braille(input)

    assert_equal expected, actual
  end

  def test_translates_one_punctuation_mark
    translator = Translator.new
    input = "!"

    expected = ["..", "00", "0."]
    actual = translator.translate_to_braille(input)

    assert_equal expected, actual
  end

  def test_translates_punctuation_marks
    translator = Translator.new
    input = "?-"

    expected = ["..", "0.", "00", "..", "..", "00"]
    actual = translator.translate_to_braille(input)

    assert_equal expected, actual
  end
end
