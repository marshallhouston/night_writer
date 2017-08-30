class FileReader
  # attr_reader :file_name

  # def initialize(file_name)
  #   @file_name = file_name
  # end

   def read(file_name)
     #filename = ARGV[0]
     File.read(file_name)
   end

   def character_count
    read.gsub(/\n/, "").length #call the method read and whetever result it puts out,count the length
   end

   def split_lines
     read.split("\n")
   end

  #  def generate_three_lines
  #    split_lines.each do |line|
  #      3.times do
  #        puts line
  #      end
  #    end
  #  end
end
