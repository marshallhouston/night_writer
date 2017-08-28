require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_reader'

class FileReaderTest < Minitest::Test

  def test_file_reader_class_exists
    file_reader = FileReader.new("message.txt")
    assert_instance_of FileReader, file_reader
  end

  def test_can_read_files
    file_reader = FileReader.new("message.txt")
    assert_equal "hello world\ntoday is sunday\n", file_reader.read
  end

  def test_can_determine_character_count
    file_reader = FileReader.new("message.txt")
    assert_equal 26, file_reader.character_count
    #11
  end

  def test_it_can_split_output_int_lines
    file_name = FileReader.new("message.txt")
    assert_equal ["hello world", "today is sunday"], file_name.split_lines
    #assert_equal 
    #assuming that we are gonna have more than one line in a file
  end
end
