require 'pry'

class Lex
	def initialize(input)
		@input = input
		@ate = ""
		eat_t
	end

	def eat_t
		@ate = @input.downcase!.gsub(/[t]/, "")
		shazam
	end

	def shazam
		reversed = @ate.split(" ")
		hey = reversed.each {|w| w.reverse!}
		puts "#{hey.first} #{hey.last}"
	end
end

Lex.new("This fucking exercise is stupid")