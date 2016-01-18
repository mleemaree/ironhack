require 'pry'

class User_Login
	attr_reader :user, :password
	def initialize(user, password)
		@users = {:user => "lee", :password => "1234"}
		@user = user
		@password = password
		validate
	end

	def validate
		if @user == @users[:user] && @password == @users[:password]
			return true
		end
	end

end

class Word_Count(user)
	def initialize
		@user = user
	end
	def logged_in
		if User_Login
			puts "please enter some text"
			text= gets.chomp
			puts "The length of your text is #{text.length} characters."
		end
	end
end




puts "Username please"
user = gets.chomp

puts "password please"
password = gets.chomp

users = {:user => user, :password => password}


user1 = User_Login.new(users[:user], users[:password])

Word_Count.new(user1)

