require 'minitest/autorun'
require 'minitest/pride'
require './lib/printer'

class PrinterTest < MiniTest::Test

  def test_printer_class_exists
    printer = Printer.new

    assert_instance_of Printer, printer
  end

  def test_assigns_characters_to_three_lines
    printer = Printer.new
    

    assert_equal expected_output, actual_output
  end

end
