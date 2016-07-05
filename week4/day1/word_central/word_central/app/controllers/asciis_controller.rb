class AsciisController < ApplicationController
	def new
		render 'new'
	end

	def create
		@text = params[:asciis][:user_text]
		
		render 'create'
	end
end
