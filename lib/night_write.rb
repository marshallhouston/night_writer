require './lib/file_reader'
require './lib/file_writer'
class NightWrite

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


key_letters_to_braille = {
      "a" => [["0 ."], [". ."], [". ."]],
      "b" => [["0 ."], ["0 ."], [". ."]],
      "c" => [["0 0"], [". ."], [". ."]],
      "d" => [["0 0"], [". 0"], [". ."]],
      "e" => [["0 ."], [". 0"], [". ."]],
      "f" => [["0 0"], ["0 ."], [". ."]],
      "g" => [["0 0"], ["0 0"], [". ."]],
      "h" => [["0 ."], ["0 0"], [". ."]],
      "i" => [[". 0"], ["0 ."], [". ."]],
      "j" => [[". 0"], ["0 0"], [". ."]],
      "k" => [["0 ."], [". ."], ["0 ."]],
      "l" => [["0 ."], ["0 ."], ["0 ."]],
      "m" => [["0 0"], [". ."], ["0 ."]],
      "n" => [["0 0"], [". 0"], ["0 ."]],
      "o" => [["0 ."], [". 0"], ["0 ."]],
      "p" => [["0 0"], ["0 ."], ["0 ."]],
      "q" => [["0 0"], ["0 0"], ["0 ."]],
      "r" => [["0 ."], ["0 0"], ["0 ."]],
      "s" => [[". 0"], ["0 ."], ["0 ."]],
      "t" => [[". 0"], ["0 0"], ["0 ."]],
      "u" => [["0 ."], [". ."], ["0 0"]],
      "v" => [["0 ."], ["0 ."], ["0 0"]],
      "w" => [[". 0"], ["0 0"], [". 0"]],
      "x" => [["0 0"], [". ."], ["0 0"]],
      "y" => [["0 0"], [". 0"], ["0 0"]],
      "z" => [["0 ."], [". 0"], ["0 0"]]
    }
