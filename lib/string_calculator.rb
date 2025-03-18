# StringCalculator
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ','
    if numbers.start_with?('//')
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..] # Extract custom delimiter
      numbers = parts[1]
    end

    numbers = numbers.gsub("\n", delimiter) # Handle new lines as delimiters
    num_list = numbers.split(delimiter).map(&:to_i)

    negatives = num_list.select(&:negative?)
    raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

    num_list.sum
  end
end
