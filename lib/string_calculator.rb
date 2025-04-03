class StringCalculator
  def add(numbers)
    numbers.split(",").map(&:to_i).sum
  end
end
