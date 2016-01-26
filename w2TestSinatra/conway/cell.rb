require 'pry'


class Cell
  def initialize(state, neighbours)
    @state = state # either 1 or 0 for alive or dead
    @neighbours = neighbours # an array that represents the surrounding cells
    @surround = []
    n = Array.new(8,0)
  	@surround = n.fill(1, 0..@neighbours-1).reverse!
  end

  def state
    @state
  end

  def neighbours
    @neighbours
  end

  def regenerate
  	alive = @surround.select{|a| a == 1}.length
   	case
	when @state == 1 && alive <= 2
		@state = 1
	when @state ==1 && alive > 1 && alive <=3
		@state = 1
	when @state == 1 && alive > 3
		@state = 0
	when @state == 0 && alive == 3
		@state = 1
	else
		@state
	end
	@state
  end
end


