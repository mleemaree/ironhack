require "rspec"
require "./fizzbuzz"

RSpec.describe "fizzbuzz" do
	before :each do
		@result = FizzBuzz.new.count
	end

	it "should return Fizz if %3" do
		expect(@result[2]).to eq("Fizz")
	end

	it "should return Buzz if %5" do
		expect(@result[4]).to eq("Buzz")
	end

	it "should print FizzBuzz if %15" do
		expect(@result[14]).to eq("FizzBuzz")
	end
end