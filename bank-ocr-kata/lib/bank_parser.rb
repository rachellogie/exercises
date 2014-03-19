class BankParser

  def parse(graphic)
    final_number = ""
    i =0
    each_letter = []

    9.times do
      graphic.each do |line|
        each_letter << line[i..i+2]
      end
      final_number << translate_to_numeric(each_letter).to_s
      i += 3
      puts each_letter
      each_letter = []

    end
    final_number.to_i
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

