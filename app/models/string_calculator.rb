class StringCalculator < ApplicationRecord

  def self.add(numbers)
    return 0 if numbers.empty?
    delimiter = ','
    numbers = numbers.gsub("\n", delimiter)
    numbers_array = numbers.split(delimiter).map(&:to_i)
    numbers_array.reduce(:+)
  end
end
