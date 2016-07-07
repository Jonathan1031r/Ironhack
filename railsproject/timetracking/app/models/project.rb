class Project < ApplicationRecord

	has_many :time_entries

	# validates :name, presence: true, 
	# 	uniqueness: true,
	# 	length: {minimum: 30}, 
	# 	format: {with:/[a-zA-Z]/}
	# project = Project.find_by(id: 1)
	# project.time_entries

	def self.clean_old
		Project.where("created_at < ?", 1.week.ago).destroy_all
	end
end
