require 'pry'
require './cell'

class Board

  def initialize
    @board=Array.new(8){Array.new(8)}
  end

  def populate_new_board

    (0...8).each do |row|
      (0...8).each do |cell|
      	newcell = Cell.new(Random.new.rand(0..1), Random.new.rand(1..8))
      	if newcell.state == 1
        	@board[row][cell] = "X"
        else
        	@board[row][cell] = " "
        end
      end
    end

	@board.each do |r|
	  puts r.each { |p| p }.join(" ")
	end
  end

  def run_game
  	@board.each do |r|
	  puts r.each { |p| p }.join(" ")
	end
  end

end

hey = Board.new
populate = hey.populate_new_board
hey.run_game
puts "hi"