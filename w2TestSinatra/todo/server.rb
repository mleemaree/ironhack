# require 'sinatra'

# get "/" do
# 	"My TODO list"
# end


require 'pry'
class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now.asctime
    end

    def created_at
    	@created_at
    end

    def complete?
    	@complete
    end

    def completed!
    	@complete = true
    	@complete
    end

    def make_incomplete!
    	@complete = false
    	@complete
    end

    def update_content!(fix_text)
       	@created_at = Time.now.asctime
    	@content = fix_text
    end

end

class TodoList
	attr_reader :tasks
	def initialize(user)
		@tasks = []
		@user = user

	end

	def create_user
    	@user = @user
    end

	def add_task(task)
		@tasks << task
		@tasks
	end

	def delete_task(id_num)
		@tasks.delete_if {|k| k.id == id_num}
		@tasks
	end

	def find_task_by_id(id_num)
		@tasks.each do |t|
			id = t.id == id_num ? t : nil;
			return id
		end
	end

	def sort_by_created
		sorted_tasks = @tasks.sort! { | t1, t2 | t1.created_at <=> t2.created_at}
	end

end

# task = Task.new("hi")
# task1 = Task.new("yew")
# list = TodoList.new
# list.add_task(task1)
# list.add_task(task)
# puts list.sort_by_created






