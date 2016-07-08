class UsersController < ApplicationController
	def show
		render 'show'
	end

	def new
		render 'new'
	end

	def create
		@user = User.new(
			:name => params[:user][:name],
			:email => params[:user][:email])	


		@user.save				
		redirect_to '/user/new'
	end

	def destory
		redirect_to ''
	end
end
