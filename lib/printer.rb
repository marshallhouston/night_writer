class Printer
attr_accessor :line_1, :line_2, :line_3

  def initialize
    @line_1 = ''
    @line_2 = ''
    @line_3 = ''
  end

  def assign_lines(input)
    input.each_slice(3).each do |set|
    @line_1 << set[0]
    @line_2 << set[1]
    @line_3 << set[2]
    end
  end

  def add_new_line_characters
    @line_1 << "\n"
    @line_2 << "\n"
  end

  def prints
    final_braille = ''
    final_braille = final_braille.concat(@line_1, @line_2, @line_3)
  end

end
