module Luhn
  def self.is_valid?(number)
    split_numbers = number.to_s.chars
    split_numbers = split_numbers.map {|number| number.to_i}
    
    # loop through the array from the end, multiplying every other digit by 2, and subtract 9 if it's greater than or equal to 10.
    length = split_numbers.length
    x = 2
    while x <= length
      split_numbers[-x] = split_numbers[-x] * 2
      if split_numbers[-x] >= 10
        split_numbers[-x] = split_numbers[-x] - 9
      end
      x += 2
    end

    sum = split_numbers.reduce(0) {|sum, number| sum + number }
    
    return sum%10 == 0

  end
end