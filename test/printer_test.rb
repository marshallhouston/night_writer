require 'minitest/autorun'
require 'minitest/pride'
require './lib/printer'

class PrinterTest < MiniTest::Test

  def test_printer_class_exists
    printer = Printer.new

    assert_instance_of Printer, printer
  end

  def test_prints_correct_characters_for_one_letter
    printer = Printer.new

    input = ["0.", "..", ".."]
    expected = "0.\n..\n..\n"
    actual = printer.print(input)

    assert_equal expected, actual
  end

  def test_prints_correct_characters_for_two_letters_translated
    printer = Printer.new

    input = ["0.", "..", "..", "0.", "..", ".."]
    expected = "0.0.\n....\n....\n"
    actual = printer.print(input)

    assert_equal expected, actual
  end

  def test_prints_correct_characters_with_four_letters_translated
    printer = Printer.new

    input = ["..","..",".0","0.","..","..","..","..",".0","0.","..",".."]
    expected = "..0...0.\n........\n.0...0..\n"
    actual = printer.print(input)

    assert_equal expected, actual
  end

  def test_prints_fourth_line_if_41_characters_input
    printer = Printer.new

    input = ["0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", "..", "0.", "..", ".."]
    expected = "0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.\n................................................................................\n................................................................................\n0.\n..\n..\n"
    actual = printer.print(input)

    assert_equal expected, actual
  end

end
