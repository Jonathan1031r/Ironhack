class ConcertsController < ApplicationController
	def new
		render 'new'
	end

	def index
		# @the_concert = Concert.find(params[:artist])

		@concerts_array = Concert.order(artist: "asc")

		render 'index'
	end
end
