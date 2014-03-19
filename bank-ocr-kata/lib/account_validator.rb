class AccountValidator

    def valid?(num)

      num_to_string = num.to_s.reverse

      count = 1
      sum = 0

      num_to_string.each_char do |digit|
        sum += (digit.to_i * count)
        count += 1
      end

      sum % 11 == 0
    end
end