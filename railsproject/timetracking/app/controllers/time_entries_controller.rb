class TimeEntriesController < ApplicationController
	def update
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.find(params[:id])

		if @my_entry.update(entry_params)
			# (hours: params[:time_entry][:hours],
			# minutes: params[:time_entry][:minutes],
			# date: params[:time_entry][:date],
			# comments: params[:time_entry][:comments])
			redirect_to "/projects/#{@my_project.id}/time_entries"
		else
			render 'edit'
		end	
	end

	def index
		@my_project = Project.find(params[:project_id])

		@entries_array = @my_project.time_entries

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

		@my_entry = @my_project.time_entries.new(entry_params)

		if @my_entry.save
			redirect_to "/projects/#{@my_project.id}/time_entries"
		else
			render "new"
		end		
	end

	def edit
		@my_project = Project.find(params[:project_id])

		@my_entry = @my_project.time_entries.find(params[:id])
	end

	#To secure your form from hackers(always put in the bottom)
	private

	def entry_params
		params.require(:time_entry).permit(:hours, :comments, :minutes, :date)
	end
end
