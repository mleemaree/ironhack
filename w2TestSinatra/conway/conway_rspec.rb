require 'rspec'
require './cell'
require './grid'

RSpec.describe 'conway' do

describe Cell do 

  describe '#regenerate' do
    it "regenerates a live cell from a live cell if it has 2 neighbours" do
      cell1 = Cell.new(1, 2)
      expect(cell1.regenerate).to eq(1)
    end
  end

  describe '#regenerate' do
    it "regenerates a dead cell from a dead cell if it has 0 neighbours" do
      cell1 = Cell.new(0, 0)
      expect(cell1.regenerate).to eq(0)
    end
  end

  describe '#regenerate' do
  	it "kills a live cell if it has more than 3 neighbours" do
  		cell1= Cell.new(1,4)
  		expect(cell1.regenerate).to eq(0)
  	end
  end

  describe '#regenerate' do
  	it "summon from the death a cell if it has exactly 3 live neighbours" do
  		cell1= Cell.new(0,3)
  		expect(cell1.regenerate).to eq(1)
  	end
  end

  describe '#regenerate' do
  	it "lives onnnnnn! with 2 neighbours" do
  		cell1= Cell.new(1,2)
  		expect(cell1.regenerate).to eq(1)
  	end
  	it "lives onnn! with 3 neighbors" do
  		cell1= Cell.new(1,3)
  		expect(cell1.regenerate).to eq(1)
  	end
  end

end

describe Grid do

	

end




end