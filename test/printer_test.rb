require 'minitest/autorun'
require 'minitest/pride'
require './lib/printer'

class PrinterTest < MiniTest::Test

  def test_printer_class_exists
    printer = Printer.new

    assert_instance_of Printer, printer
  end

  def test_assigns_characters_to_first_line
    printer = Printer.new

    input = ["0.", "..", ".."]
    printer.assign_lines(input)
    expected = "0."
    actual = printer.line_1

    assert_equal expected, actual
  end

  def test_assigns_characters_to_second_line
    printer = Printer.new
    input = ["0.", "..", ".."]
    printer.assign_lines(input)

    expected = ".."
    actual = printer.line_2

    assert_equal expected, actual

  end

  def test_assigns_characters_to_third_line
    printer = Printer.new
    input = ["0.", "..", ".."]
    printer.assign_lines(input)

    expected = ".."
    actual = printer.line_3

    assert_equal expected, actual
  end

  def test_assigns_multiple_characters_to_a_line
    printer = Printer.new

    input = ["0.", "..", "..", "0.", "..", ".."]
    printer.assign_lines(input)


    expected_1 = "0.0."
    actual_1 = printer.line_1
    expected_2 = "...."
    actual_2 = printer.line_2
    expected_3 = "...."
    actual_3 = printer.line_3


    assert_equal expected_1, actual_1
    assert_equal expected_2, actual_2
    assert_equal expected_3, actual_3

  end

  def test_assigns_multiple_characters_to_a_line
    printer = Printer.new

    input = ["..","..",".0","0.","..","..","..","..",".0","0.","..",".."]
    printer.assign_lines(input)


    expected_1 = "..0...0."
    actual_1 = printer.line_1
    expected_2 = "........"
    actual_2 = printer.line_2
    expected_3 = ".0...0.."
    actual_3 = printer.line_3


    assert_equal expected_1, actual_1
    assert_equal expected_2, actual_2
    assert_equal expected_3, actual_3
  end

  def test_adds_new_lines_to_end_of_line1_and_line2
    printer = Printer.new

    input = ["..","..",".0","0.","..","..","..","..",".0","0.","..",".."]
    printer.assign_lines(input)
    printer.add_new_line_characters

    expected_1 = "..0...0.\n"
    actual_1 = printer.line_1
    expected_2 = "........\n"
    actual_2 = printer.line_2

    assert_equal expected_1, actual_1
    assert_equal expected_2, actual_2
  end

  def test_prints_all_lines
    printer = Printer.new

    input = ["..","..",".0","0.","..","..","..","..",".0","0.","..",".."]
    printer.assign_lines(input)
    printer.add_new_line_characters
    printer.prints_80_characters_per_line


    expected = "..0...0.\n........\n.0...0.."
    actual = printer.prints

    assert_equal expected, actual
  end


  
end
