require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
# require './lib/night_write'

class TranslatorTest < Minitest::Test

  def test_translator_exists
    skip
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




KEY_LETTERS_TO_BRAILLE = {
        "a" => [["0."], [".."], [".."]],
        "b" => [["0."], ["0."], [".."]],
        "c" => [["00"], [".."], [".."]],
        "d" => [["00"], [".0"], [".."]],
        "e" => [["0."], [".0"], [".."]],
        "f" => [["00"], ["0."], [".."]],
        "g" => [["00"], ["00"], [".."]],
        "h" => [["0."], ["00"], [".."]],
        "i" => [[".0"], ["0."], [".."]],
        "j" => [[".0"], ["00"], [".."]],
        "k" => [["0."], [".."], ["0."]],
        "l" => [["0."], ["0."], ["0."]],
        "m" => [["00"], [".."], ["0."]],
        "n" => [["00"], [".0"], ["0."]],
        "o" => [["0."], [".0"], ["0."]],
        "p" => [["00"], ["0."], ["0."]],
        "q" => [["00"], ["00"], ["0."]],
        "r" => [["0."], ["00"], ["0."]],
        "s" => [[".0"], ["0."], ["0."]],
        "t" => [[".0"], ["00"], ["0."]],
        "u" => [["0."], [".."], ["00"]],
        "v" => [["0."], ["0."], ["00"]],
        "w" => [[".0"], ["00"], [".0"]],
        "x" => [["00"], [".."], ["00"]],
        "y" => [["00"], [".0"], ["00"]],
        "z" => [["0."], [".0"], ["00"]],
        :shift => [[".."],[".."],[".0"]]
      }
