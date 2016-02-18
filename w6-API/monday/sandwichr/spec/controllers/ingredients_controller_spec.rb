require 'rails_helper'
# To use seed db in your testing environment
# RAILS_ENV=test rake db:seed

RSpec.describe IngredientsController, type: :controller do

  describe "GET #index" do
    it 'should return a success code (200)' do
      get :index
      expect(response.code).to eq("200")
    end
  end
  describe "GET #show" do
    it 'should return a success code (200)' do
      ingredient = Ingredient.create name: "Calamari", calories: "100 cal"
      get :show, id: ingredient.id
      expect(response).to be_success
      # ingredient.destroy

    end
    it 'should return not found' do
      get :show, id: 100
      expect(response.code).to eq("404")
      expect(response).to be_not_found
      # ingredient.destroy
    end

  end
  describe "POST #create" do
    it 'creates a new ingredient' do
      expect {
        post :create, {ingredient: {name: 'Carrot', calories: '123'}}
      }.to change(Ingredient, :count).by(1)
    end
    it "raises an error when no wrapper" do
      expect {
        post :create, {name: 'Carrot', calories: '123'}
      }.to raise_error(ActionController::ParameterMissing)
    end
  end
  describe "DELETE #delete" do
    it 'deletes the  new ingredient' do
      ingredient = Ingredient.create name: "Calamari", calories: "100 cal"
      expect {
        delete :destroy, id:  ingredient.id
      }.to change(Ingredient, :count).by(-1)
    end
  end

end
