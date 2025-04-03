require 'string_calculator'

describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    it "returns 0 for an empty string" do
      expect(calculator.add("")).to eq(0)
    end

    it "return 0 for a string with only spaces" do
      expect(calculator.add("   ")).to eq(0)
    end

    it "return 0 for string with only newline characters" do
      expect(calculator.add("\n\n\n")).to eq(0)
    end

    it "returns the number for a single number" do
      expect(calculator.add("5")).to eq(5)
    end

    it "returns the sum of two numbers" do
      expect(calculator.add("1,2")).to eq(3)
    end
  end
end