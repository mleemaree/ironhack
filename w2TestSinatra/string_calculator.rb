require 'pry'

class StringCalculator
  def add numbers:
  	numbers.map(&:to_i).reduce(0,:+)
  	1+1
  	binding.pry
  end
end
