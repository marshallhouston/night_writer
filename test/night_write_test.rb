require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'


class NightWriteTest < Minitest::Test

  def test_night_write_class_exists
    night_write = NightWrite.new

    assert_instance_of NightWrite, night_write
  end

  def test_can_create_new_instance_of_translator
    NightWrite.new

    assert_instance_of Translator, Translator.new
  end

  def test_can_create_new_instance_of_printer
    NightWrite.new

    assert_instance_of Printer, Printer.new
  end

end
