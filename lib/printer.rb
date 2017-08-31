class Printer

  def print(lines_braille_characters)
    line_1 = ''
    line_2 = ''
    line_3 = ''

    lines_braille_characters.each_slice(3) do |set|
      line_1 << set[0]
      line_2 << set[1]
      line_3 << set[2]
    end

    final_text = ''
    while line_1.length > 0
      final_text << line_1.slice!(0..79) << "\n"
      final_text << line_2.slice!(0..79) << "\n"
      final_text << line_3.slice!(0..79) << "\n"
    end

    final_text

  end

end
