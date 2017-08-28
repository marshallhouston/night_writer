class Translator
  #this is where the actual text should be translated into braille

  # we need to pass information into this class from the file reader. how are we saving information that was read? the method read actually has the file open it up and read it.

  def translate(input)
    #for the input, it should identify the value associated with the key
    KEY_LETTERS_TO_BRAILLE[input][0][0]
  end

  KEY_LETTERS_TO_BRAILLE = {
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

end
