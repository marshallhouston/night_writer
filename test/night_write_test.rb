require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'


class NightWriteTest < Minitest::Test

  def test_night_write_class_exists
    night_write = NightWrite.new
    assert_instance_of NightWrite, night_write
  end

  
end
