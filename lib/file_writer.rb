class FileWriter
  attr_reader :file_name

  # def initialize(file_name)
  #   @file_name = file_name
  # end

  # def write
  #   filename = ARGV[1]
  #   File.write(filename, translated_braille)
  # end

  def add_line(line)
    target = open(file_name, "a")
    #open the file and get it ready too use
    target.puts line
    target.close
  end
end
