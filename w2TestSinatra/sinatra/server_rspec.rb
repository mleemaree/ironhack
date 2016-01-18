require 'rspec'
require "./server"

RSpec.describe Task do

	before :each do
		@task = Task.new("hi")
	end

	describe "task completed" do
		# initial completeness status
		# it "initial completed?" do
		# 	expect(@task.complete?).to eq(false)
		# end

		# If i mark a task complete 
		it "task completed?" do
			expect(@task.completed!).to eq(true)
		end

		# If I mark a task incomplete
		it "task incomplete?" do
			expect(@task.make_incomplete!).to eq(false)
		end



	end

end
