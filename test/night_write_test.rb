require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'


class NightWriteTest < Minitest::Test

  def test_night_write_class_exists
    night_write = NightWrite.new
    assert_instance_of NightWrite, night_write
  end

  def test_opens_and_reads_information_in_ARGV0_using_FileReader
    night_write = NightWrite.new

    assert_instance_of FileReader, night_write.reader
  end

  def test_passes_information_from_FileReader_to_Translator
    night_write = NightWrite.new

    assert_instance_of Translator, night_write.translator
  end

  def test_passes_translated_information_to_Printer
    night_write = NightWrite.new

    assert_instance_of Printer, night_write.printer

  end

end
