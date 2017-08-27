class FileWriter

  def write
    filename = ARGV[1]
    File.write(filename, translated_braille)
  end

  def save_character_count
    #variable for the return value of File.write
  end
end
