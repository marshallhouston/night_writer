class Printer
attr_reader :line_1, :line_2, :line_3

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

  def prints_80_characters_per_line
    while @line_1.length > 0
      @line_1.slice!(0..79) << "\n"
      @line_2.slice!(0..79) << "\n"
      @line_3.slice!(0..79) << "\n"
    end
  end

  def prints
    braille_text = ''
    braille_text = braiile_text.concat(@line_1, @line_2, @line_3)
  end


end
