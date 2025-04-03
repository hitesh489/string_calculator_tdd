class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?

    delimiter = /[,\n]/

    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
    end

    nums = numbers.split(delimiter).map do |num|
      num = num.strip
      raise ArgumentError, "Invalid input" unless num.match?(/^-?\d+$/)
      num.to_i
    end

    negatives = nums.select { |num| num < 0 }
    raise ArgumentError, "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    nums.reject { |num| num > 1000 }.sum
  end
end
