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
		the_sandwich = Sandwich.find_by(id: params[:id])
	    the_ingredient = Ingredient.find_by(id: params[:ingredient_id])

	    if the_sandwich && the_ingredient
	      the_sandwich.ingredients.push( the_ingredient )

	      render json: the_sandwich.to_json(include: [:ingredients])
	    else
	      render status: 404, json: { error: "Sandwich #{params[:id]} not found" }
		end
	end
end
