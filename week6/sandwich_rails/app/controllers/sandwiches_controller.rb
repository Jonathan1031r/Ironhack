class SandwichesController < ApplicationController
	def index
		sandwich = Sandwich.all
		render json: sandwich
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: { error: "sandwich not found" }, status: 404
			return
		end
		render json: sandwich	
	end

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: { error: "sandwich not found" }, status: 404
			return
		end
		sandwich.update(sandwich_params)
		render json: sandwich
	end

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: { error: "sandwich not found" }, status: 404
			return
		end
		sandwich.destroy
		head :no_content
	end

	def add_ingredients
		the_ingredient = Ingredient.find(id: params[:id])
		.push(the_ingredient)
		end
	end
end
