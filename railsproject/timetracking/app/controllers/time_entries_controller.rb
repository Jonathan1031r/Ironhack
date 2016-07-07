class TimeEntriesController < ApplicationController
	def index
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries

		render 'index'
	end

	def new 
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.new
		# ^ Can also be writen like v
		# @my_entry = TimeEntry.new(project_id: @my_project.id)
		render 'new'
	end

	def create
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.new(
			:hours => params[:time_entry][:hours],
			:minutes => params[:time_entry][:minutes],
			:date => params[:time_entry][:date],
			:commentes => params[:time_entry][:comments])

		if @my_entry.save
			redirect_to "/project/#{@my_project.id}/time_entries"
		else
			render "new"
		end		
	end
end
