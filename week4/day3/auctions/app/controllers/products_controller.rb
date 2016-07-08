class ProductsController < ApplicationController

	def index
		
	end

	def show
		
	end

	def create
		@product = Product.new(
			:title => params[:product][:title],
			:description => params[:product][:description],
			:deadline => params[:product][:deadline])

		@product.save				
		redirect_to '/product/new'	
	end

	def destroy
	
	end	
end
