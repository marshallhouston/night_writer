require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator.rb'

class TranslatorTest < Minitest::Test

  def test_translator_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_translator_fetches_the_first_two_braille_characters
    input = "a"
    expected_output = "0 ."

    translator = Translator.new
    actual_output = translator.translate(input)

    assert_equal expected_output, actual_output
  end

end
