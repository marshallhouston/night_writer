require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_reader'

class FileReaderTest < Minitest::Test

  def test_file_reader_class_exists
    file_reader = FileReader.new
    assert_instance_of FileReader, file_reader
  end

  def test_it_can_read_a_file
    file_reader = FileReader.new
    
  end
end
