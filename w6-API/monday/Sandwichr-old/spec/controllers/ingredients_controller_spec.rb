require 'rails_helper'

RSpec.describe IngredientsController, type: :controller do
	describe "GET #index" do
		it 'should return a succes code(200)' do
			get :index
			expect(response.code).to eq('200')
		end

		# it 'should assign an instance variable ingredient to all ingredients' do
		# 	get :index
		# 	expect(@ingredient).to eq(Ingredient.all)
		# end

	end

	describe "GET #show" do
		it 'should return a success code(200)'do
			ingredient = Ingredient.create(name: 'carrot', calories: '100')
			get :show, {id: ingredient.id}
			expect(response).to be_success
			ingredient.destroy
		end

		it 'should return not found' do
			get :show, {id: -1}
			expect(response.code).to eq('404')
		end

	end

	describe "POST #create" do
		it "creates a new Ingredient"do
			expect{
				post :create, {ingredient: {name: 'carrot', calories: '123'}}
			}.to change(Ingredient, :count).by(1)
		end

		it "raises an error when no wrapper" do
			expect{
				post :create, {name: 'Carrot', calories: '332'}
			}.to raise_error(ActionController::ParameterMissing)
		end

	end



	describe "PATCH #update" do
		it 'should return a success code(200)'do
			ingredient = Ingredient.create(name: 'carrot', calories: '100')
			get :update, id: ingredient.id, ingredient: {name: 'pickle'}
			expect(response).to be_success
			ingredient.destroy
		end
	end


	describe "DESTROY #delete" do
		it 'deletes an ingredient'do
		ingredient = Ingredient.create(name: 'carrot', calories: '100')
			expect{
				delete :destroy, {id: ingredient.id}
			}.to change(Ingredient, :count).by(-1)
		end
	end


end