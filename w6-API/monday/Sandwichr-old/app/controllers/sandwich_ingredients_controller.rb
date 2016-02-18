class SandwichIngredientsController < ApplicationController
	def index
		@sandwich_ingredients = SandwichIngredient.all
	end

	def associate
		@ingredient= Ingredient.find params[:ingredients_id]
		@sandwich = Sandwich.find params[:sandwich_id]
		@sandiwch.ingredients << @ingredient
	end
end
