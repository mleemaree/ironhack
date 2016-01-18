#hashes call

# hash = {
# 	:wat => [1,2,{:wut =>[1,[[0,1,2,3,4,5,6,7,8,{:bbq=>"Hello!"}],"hi"]]}]
# }

# arr = [[0,1,2,3,4,{:secret => {:unlock => [1,"you want me"]}}]]

require 'pry'

# car stuff

# class CarDealer
# 	def initialize(inventory)
# 		@inventory = inventory
# 	end

# 	def cars(brand)
# 		@inventory[brand.to_sym].each{|model| puts model}
# 	end

# 	def print_inventory(i)
# 		@inventory.each{|brand| 
# 			puts "#{brand[0]}:  #{brand[1]}"
# 		}
# 	end

# end

# inventory = {
# 	:Ford => ["fiesta","mustang"],
# 	:Seat => ["ibiza", "leon", "Toledo"]
# }

# car_dealer = CarDealer.new(inventory)

# #car_dealer.cars("Ford")

# car_dealer.print_inventory(inventory)

# ENGINE module

class Car
	attr_reader :start_noise
	def initialize(engine)
		@engine = engine
	end

	def start
		@engine.move_pistons
		start_noise = "click "
		print start_noise
	end

	def noise
		self.start
		@engine.move_pistons
	end

end

class Engine_S
	def move_pistons
		sound = "Vrrrrrrrrmmmm"
		puts sound
	end
end

class Engine_L
	def move_pistons
		sound "Purrrr"
		puts sound
	end
end

class Engine_Sp
	def move_pistons
		sound = "VROOM"
		puts sound
	end
end

class Mercedes
	attr_reader :wheels
	def initialize(wheels)
		@wheels = wheels
	end
	def noise
		sound = "Mercedes Noise"
		puts sound
	end
end

class Ford
	attr_reader :wheels
	def initialize(wheels)
		@wheels = wheels
	end
	def noise
		sound = "Ford Noise"
		puts sound
	end
end

class Honda
	attr_reader :wheels
	def initialize(wheels)
		@wheels = wheels
	end
	def noise
		sound = "Honda Noise"
		puts sound
	end
end

class VehiclesHandler
	def initialize(array)
		@array = array
	end

	def vroom(brand)
		brand.noise
	end

	def wheels
		total_wheels = @array.reduce(0) do |sum,vehicle|
		sum+=vehicle.wheels
		end
		binding.pry
	end

end


vehicles = [Mercedes.new(4), Ford.new(2), Honda.new(4)]

# new_car = Car.new(Engine_Sp.new)
# new_car.noise


