require './lib/file_reader'
require './lib/file_writer'
class NightWrite
attr_reader :reader

  def initialize
    @input_file_name = ARGV[0]
    @output_file_name = ARGV[1]
    @reader = FileReader.new(@input_file_name)
    @writer = FileWriter.new(@output_file_name)

    puts "Created '#{@output_file_name}' containing #{@reader.character_count} characters"

  end

  def output
    generate_three_lines
     #calling the generate_three_lines method on file reader
  end

  def generate_three_lines
    @reader.split_lines.each do |line|
      #@reader accessing from the reader file
      3.times do
        @writer.add_line(line)
        #puts line
      end
    end
  end


end
NightWrite.new.output
