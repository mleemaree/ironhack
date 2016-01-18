require 'pry'
class Car
  attr_reader(:name, :type, :cities)
  def initialize(name, type, cities = [])
    @name = name
    @type = type
    @cities = []
  end

  def sound
  	if @type == "standard"
  		puts "Broom"
  	elsif @type == "redneck"
  		puts "BROOOOOM"
  	else
  		puts "No noise"
  	end
  end

  def color
  	if @type == "standard"
  		color = "red"
  		puts "red"
  	elsif @type == "redneck"
  		color = "white"
  		puts "white"
  	else
  		color = "black"
  		puts "black"
  	end
  end

  def city(city)
  	if city.is_a?(Array)
  		@cities.concat(city)
  	else
  		@cities << city
  	end	
  end

  def visited_show
  	require "yaml"
  	@cities.each{|i| i.capitalize}
  	# puts @cities
  	file = "#{self.object_id}.yaml"
  	IO.write file, @cities.to_yaml
  	data_after = YAML.parse(IO.read(file))
  	@cities == data_after
  end
  	
end #end of Car

new_car = Car.new("truck","redneck")

new_car.color
new_car.sound


new_car.city(["paris", "new york", "st petersburg"])

new_car.city(["london", "rome", "amsterdam"])

new_car.city("lodi")

new_car.visited_show


class Racing_car < Car
	def noise
		puts "BROOOOM22222"
	end
end

race = Racing_car.new("racer", "standard")

race.noise