class Project < ApplicationRecord

	has_many :time_entries

	# project = Project.find_by(id: 1)
	# project.time_entries

	def index

		render 'index'
	end
end
