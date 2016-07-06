class Timeentry < ApplicationRecord
	belongs_to :project

	# the_entries = Timeentry.create(
	# 	:hours => 1
	# 	:minutes => 45
	# 	:commits => "did stuff"
	# 	:date => Time.now
	# 	:project_id => 1)
end
