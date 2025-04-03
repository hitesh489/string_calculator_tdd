class StringCalculator
  def add(numbers)
    return 0 if numbers.strip.empty?

    nums = numbers.gsub("\n", ",").split(",").map do |num|
      num = num.strip
      raise ArgumentError, "Invalid input" unless num.match?(/^\d+$/)
      num.to_i
    end

    nums.sum
  end
end
