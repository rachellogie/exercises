class BankParser

  def parse(graphic)
    graphic_array = parse_graphic(graphic)
    final_number = ""
    i =0
    each_letter = []

    9.times do
      graphic_array.each do |line|
        each_letter << line[i..i+2]
      end
      final_number << translate_to_numeric(each_letter).to_s
      i += 3
      each_letter = []

    end
    final_number.to_i
  end

  private

  def parse_graphic(graphic)
    array = []
    graphic.each_line do |line|
      line = line.chomp
      if line.length != 18
        line << "\s"
      end
      array << line
    end
    array

  end

  def translate_to_numeric(letter)
    case letter
      when ["   ", "  |", "  |"]
        1
      when [" _ ", " _|", "|_ "]
        2
      when [" _ ", " _|", " _|"]
        3
      when ["   ", "|_|", "  |"]
        4
      when [" _ ", "|_ ", " _|"]
        5
      when [" _ ", "|_ ", "|_|"]
        6
      when [" _ ", "  |", "  |"]
        7
      when [" _ ", "|_|", "|_|"]
        8
      when [" _ ", "|_|", " _|"]
        9
      else
        0
    end
  end
end

