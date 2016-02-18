class IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all

    if params[:sandwich_id] != nil
      sandwich = Sandwich.find(params[:sandwich_id])
      sandwich_ingredients = sandwich.ingredients
       unless sandwich_ingredients
         render json: {error: "ingredient not found"},
         status: 404
         return
        end
    end

      if params[:sandwich_id] != nil
        render json: sandwich_ingredients
      else
        render json: ingredients
      end
  end

  def show
   ingredient = Ingredient.find_by(id: params[:id])
   unless ingredient
     render json: {error: "ingredient not found"},
     status: 404
     return
    end
    render json: ingredient
  end

  def update
    ingredient = Sandwich.find_by(id: params[:id])
    unless ingredient
      render json: {error: "ingredient not found"},
      status: 404
      return
    end
    ingredient.update(sandwich_params)
    render json: ingredient
  end

  def destroy
   ingredient = Ingredient.find_by(id: params[:id])
   unless ingredient
     render json: {error: "ingredient not found"},
     status: 404
     return
   end
   ingredient.destroy
   render json: ingredient
 end

  def create
   ingredient = Ingredient.create(ingredient_params)
   render json: ingredient
  end


  private

  def ingredient_params
    params.require(:ingredient)
   .permit(:name, :calories)
  end

end
