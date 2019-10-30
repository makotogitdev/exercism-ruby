class Luhn
  def self.valid?(raw_digits)
    numbers = raw_digits.gsub(" ", "").chars

    return false if numbers.length <= 1 || !numbers.all?(/^[0-9]*$/)

    converted_digits = []

    numbers.reverse.each_with_index do |value, index|
      if index % 2 != 0
        converted = value.to_i * 2
        converted = converted - 9 if converted > 9
        converted_digits << converted
      else
        converted_digits << value.to_i
      end
    end

    converted_digits.sum % 10 == 0
  end
end

