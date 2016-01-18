# #test 

# # fruits = ["orange", "banana", "pineapple"]

# # fruits.each do |fruit|
# # 	puts fruit
# # end

# # people = {
# # 	name: "John",
# # 	surname: "Doe"
# # }

# # people.each do |key, value|
# # 	puts value
# # end

# classmates = ["Nicolas", "Miguel", "Alvaro"]

# classmates.each do |name|
# 	puts "Good morning #{name}!"
# end

# total = [1,2,3].map do |item|
# 	item+1
# end

# puts total



cities = ["miami", "madrid", "barcelona", "denver"]
# pretty_cities = cities.map { |city| city.capitalize }
# puts cities 

# g = puts cities



# if g == nil 
# 	print "nil"
# end

long = cities.reduce do|a, b| 
	if a.length > b.length 
		a
	else
		b
	end

	# shorthand: a.length > b.length ? a : b 
end
puts long




