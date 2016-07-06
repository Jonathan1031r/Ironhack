class ProjectsController < ApplicationController
	def index

	@project_array = Project.order(created_at: "desc")
		 					.limit(10)

		render 'index'
	end	

	def new
		@my_project = Project.new
		render 'new'
	end

	def create
		@my_project = Project.new(
			:name => params[:project][:name],
			:desscription => params[:project][:desscription])
		@my_project.save

		redirect_to "/projects/#{@my_project.id}"
		
	end

	def show
		@my_project = Project.find(params[:id])
		unless @my_project
			render'no_projects_found'
		end	
		render 'show'
	end
end
