require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_write'


class NightWriteTest < Minitest::Test

  def test_night_write_class_exists
    night_write = NightWrite.new
    assert_instance_of NightWrite, night_write
  end

  # def test_when_it_runs_night_write_returns_a_message_in_the_CLI
  #   night_write = NightWrite.new
  #   assert (ruby .lib/night_write.rb, "Created 'braille.txt' containing 256 characters")
  # end


end
