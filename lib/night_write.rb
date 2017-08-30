require './lib/file_reader'
require './lib/file_writer'
require './lib/translator'
require './lib/printer'

class NightWrite
attr_reader :reader, :translator, :printer

  def initialize

    input_file_name = ARGV[0]

    output_file_name = ARGV[1]

    lines_of_text = File.open(ARGV[0])
    text_to_translate = FileReader.new.read(lines_of_text)

    braille_characters = Translator.new.translate_to_braille(text_to_translate)
    final_text = Printer.new.print(braille_characters)

    File.write(output_file_name, final_text)

    puts "Created '#{output_file_name}' containing #{text_to_translate.strip.length} characters"

  end


  # def output
  #   generate_three_lines
  #    #calling the generate_three_lines method on file reader
  # end
  #
  # def generate_three_lines
  #   @reader.split_lines.each do |line|
  #     #@reader accessing from the reader file
  #     3.times do
  #       @writer.add_line(line)
  #       #puts line
  #     end
  #   end
  # end


end

NightWrite.new
# NightWrite.new.output
