require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_writer'

class FileWriterTest < Minitest::Test

  def test_file_writer_class_exists
    file_writer = FileWriter.new("file_name")
    assert_instance_of FileWriter, file_writer
  end
end
