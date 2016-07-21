class SandwichViewsController < ApplicationController
	before_action :authenticate_user!, only: [:show, :index]

	def index
		@allSandwiches = Sandwich.all

		render 'index'
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@allIngredients = Ingredient.all

	end

	def home
		
	end

end
