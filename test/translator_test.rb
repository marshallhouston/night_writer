require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'
require './lib/night_write'

class TranslatorTest < Minitest::Test

  def test_translator_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end


  def test_translator_can_receive_input_from_file_reader
    #give input to the class
    Translator.new
    input = @reader

    assert_instance_of FileReader, input
  end

  def test_split_input_into_lines

  end

  def test_split_lines_into_characters

  end

  def test_determine_case_of_characters
    #identify if it's lowercase or uppercase
  end


  def test_

  end

  def test_translate_english_letter_to_braille
    input = "a"
    expected_output = "0."

    translator = Translator.new
    actual_output = translator.translate(input)

    assert_equal expected_output, actual_output
  end

end
