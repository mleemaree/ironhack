# require 'sinatra'

# get "/" do
# 	"My TODO list"
# end

class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
    end

    def complete?
    	@complete
    end

    def completed!
    	@complete = true
    	@complete
    end

    def incomplete
    	@complete = false
    	@complete
    end
end


