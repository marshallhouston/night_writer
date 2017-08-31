# require './lib/file_reader'
require './lib/translator'
require './lib/printer'

class NightWrite

  def initialize
    lines_of_text = File.open(ARGV[0])
    text_to_translate = File.read(lines_of_text)

    braille_characters = Translator.new.translate_to_braille(text_to_translate)
    final_text = Printer.new.print(braille_characters)

    File.write(ARGV[1], final_text)

    puts "Created '#{ARGV[1]}' containing #{text_to_translate.strip.length} characters"
  end
end

NightWrite.new
