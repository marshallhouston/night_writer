class Translator
  #this is where the actual text should be translated into braille

  # we need to pass information into this class from the file reader. how are we saving information that was read? the method read actually has the file open it up and read it.

  def translate(input)
    string = ""
    KEY_LETTERS_TO_BRAILLE[input].each_with_index do |line, index|
      if index == 0 || index == 1
        string << "#{line[0]}\n"
      else
        string << line[0]
      end
    end
    string
    #for the input, it should identify the value associated with the key
    #KEY_LETTERS_TO_BRAILLE[input][0][0]
  end

  KEY_LETTERS_TO_BRAILLE = {
        "a" => [["0."], [".."], [".."]],
        "b" => [["0."], ["0."], [".."]],
        "c" => [["00"], [".."], [".."]],
        "d" => [["00"], [".0"], [".."]],
        "e" => [["0."], [".0"], [".."]],
        "f" => [["00"], ["0."], [".."]],
        "g" => [["00"], ["00"], [".."]],
        "h" => [["0."], ["00"], [".."]],
        "i" => [[".0"], ["0."], [".."]],
        "j" => [[".0"], ["00"], [".."]],
        "k" => [["0."], [".."], ["0."]],
        "l" => [["0."], ["0."], ["0."]],
        "m" => [["00"], [".."], ["0."]],
        "n" => [["00"], [".0"], ["0."]],
        "o" => [["0."], [".0"], ["0."]],
        "p" => [["00"], ["0."], ["0."]],
        "q" => [["00"], ["00"], ["0."]],
        "r" => [["0."], ["00"], ["0."]],
        "s" => [[".0"], ["0."], ["0."]],
        "t" => [[".0"], ["00"], ["0."]],
        "u" => [["0."], [".."], ["00"]],
        "v" => [["0."], ["0."], ["00"]],
        "w" => [[".0"], ["00"], [".0"]],
        "x" => [["00"], [".."], ["00"]],
        "y" => [["00"], [".0"], ["00"]],
        "z" => [["0."], [".0"], ["00"]],
        :shift => [[".."],[".."],[".0"]]
      }

end
