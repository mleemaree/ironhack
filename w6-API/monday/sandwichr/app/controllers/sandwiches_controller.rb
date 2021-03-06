class SandwichesController < ApplicationController

  def show
   sandwich = Sandwich.find_by(id: params[:id])
   unless sandwich
     render json: {error: "sandwich not found"},
     status: 404
     return
    end
    render json: sandwich.to_json({:include => :ingredients})
  end

  def update
    sandwich = Sandwich.find_by(id: params[:id])
    unless sandwich
      render json: {error: "sandwich not found"},
      status: 404
      return
    end
    sandwich.update(sandwich_params)
    render json: sandwich.to_json({:include => :ingredients})
  end

  def destroy
   sandwich = Sandwich.find_by(id: params[:id])
   unless sandwich
     render json: {error: "sandwich not found"},
     status: 404
     return
   end
   sandwich.destroy
   render json: sandwich.to_json({:include => :ingredients})
 end

  def index
   sandwiches = Sandwich.all
   render json: sandwiches
  end

  def create
   sandwich = Sandwich.create(sandwich_params)
   render json: sandwich
  end

  def associate_ingredient
		@sandwich = Sandwich.find params[:sandwich_id]
		@ingredient = Ingredient.find params[:ingredient_id]
		@sandwich.ingredients << @ingredient
    render json: sandwich.to_json({:include => :ingredients})
	end

  def add_ingredient
    @sandwich = Sandwich.find params[:sandwich_id]
    @ingredient = Ingredient.find params[:id]
    @sandwich.ingredients << @ingredient
    render json: sandwich
  end

  private

  def sandwich_params
    params.require(:sandwich)
   .permit(:name, :bread_type)
  end
end
