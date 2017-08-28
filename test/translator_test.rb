require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class TranslatorTest < Minitest::Test

  def test_translator_exists
    skip
    translator = Translator.new

    assert_instance_of Translator, translator
  end


  def test_translator_can_receive_input_from_file_reader
    input = "a"
    expected_output = "0.\n..\n.."
    translator = Translator.new

    assert_equal expected_output, translator.translate(input)
    #give input to the class
  end

  def test_determine_case_of_input
    skip
    #identify if it's lowercase or uppercase
  end

  def test_key_included_in_the_
    skip

  end

  def test_translate_english_letter_to_braille
    skip
    input = "a"
    expected_output = "0.\n..\n.."

    translator = Translator.new
    actual_output = translator.translate(input)

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
