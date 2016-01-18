require 'pry'

class FizzBuzz

	def count
		num = 1..100
		num.map do |n|
			if n%3==0 && n%5==0
				"FizzBuzz"
			elsif n%3 == 0
				"Fizz"
			elsif n%5 == 0
				"Buzz"
			else
				n
			end
		end
	end

end

