class StringCalculator < ApplicationRecord

  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    num_list = numbers.split(delimiter)

    result_array = num_list.flat_map do |element|
      element.split('"').flat_map do |part|
        part.split(/\\n|;/)
      end.map(&:to_i)
    end

    result_array.sum
  end
end
