require "rspec"
require "./lex"

RSpec.describe "lex" do
	before :each do
		@lex = Lex.new
	end

	# describe "eat_t" do
	# 	it "splits string into characters" do
	# 		expect(@lex.eat_t).to eq(["g", "r", "e", "a", "t", " ", "s", "c", "o", "t", "t", "!"])
	# 	end
	# end

	# describe "remove in eat_t" do
	# 	it "removes all t's from array" do
	# 		expect(@lex.eat_t).to eq(["g", "r", "e", "a", " ", "s", "c", "o", "!"])
	# 	end
	# end


	describe "eat_t" do
		it "removes every letter t from the input string" do
			expect(@lex.eat_t("great scott!")).to eq("grea sco!")
		end
	end

	# describe "shazam" do
	# 	it "reverses the letters in each word" do
	# 		input = @lex.eat_t("This is a stupid")
	# 		expect(@lex.eat_t("hit").shazam).to eq("hi")
	# 	end
	# end
end
