require "rspec"
require "./string_calculator"

RSpec.describe "#add" do
  it "returns 0 when empty string given" do
    result = StringCalculator.new.add(numbers: "")
    expect(result).to eq(0)
  end
end

RSpec.describe "#add" do
  it "returns 1 when 1 given" do
    result = StringCalculator.new.add(numbers: "1")
    expect(result).to eq(1)
  end
end

RSpec.describe "#add" do
  it "returns 3 when 1,2 given" do
    result = StringCalculator.new.add(numbers: "1,2")
    expect(result).to eq(3)
  end
end