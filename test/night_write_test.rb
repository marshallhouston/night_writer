require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'


class NightWriteTest < Minitest::Test

  def test_night_write_class_exists
    night_write = NightWrite.new
    assert_instance_of NightWrite, night_write
  end

  def test_opens_and_reads_information_in_ARGV_using_FileReader

  end

  def test_passes_information_from_FileReader_to_Translator

  end

  def test_saves_information_that_has_been_translated

  end

  def test_passes_translated_information_to_Printer

  end

  def test_saves_information_that_has_been_assigned_to_lines

  end

  def test_passes_information_from_Printer_to_FileWriter

  end

  def test_writes_information_into_ARGV1_using_FileWriter

  end
end
