require 'pry'
require './cell'

class Board

  def initialize
    @board=Array.new(8){Array.new(8)}
  end

  def populate_new_board
    (0...8).each do |row|
      (0...8).each do |cell|
        rand = Random.new.rand(0..1)
        alive = Cell.new(1, Random.new.rand(1..8))
        dead = Cell.new(0, Random.new.rand(1..8))

        if rand == 1
      	  @board[row][cell] = alive
        else
          @board[row][cell] = dead
        end

        if @board[row][cell]== alive
          puts "X"
        else
          puts " "
        end
      end
    end
    @board.each do |r|
      puts r.each { |p| p }.join(" ")
    end
  end

  def run_game
  end


end

hey = Board.new
populate = hey.populate_new_board
hey.run_game

