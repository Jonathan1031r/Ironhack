class ConcertsController < ApplicationController

	def new
		@the_concert = Concert.new

		render 'new'
	end

	def index
		@the_concert = Concert.where(params[:concert_id])

		@concerts_array = Concert.all

		@upcoming_concerts = Concert.where("date > ? AND date < ?", DateTime.now.end_of_day, DateTime.now.year)

		@todays_concerts = Concert.where("date > ? AND date < ?", DateTime.now.beginning_of_day, DateTime.now.end_of_day)
			if @todays_concerts == nil
				puts "No concerts today but check out what we have later this month"
			end

		render 'index'
	end

	def show
		@the_concert = Concert.find(params[:id])
		unless @the_concert
			render'no_concerts_found'
		end	
		render 'show'
	end

	def create
		@the_concert = Concert.new(concert_params)

		if @the_concert.save
			redirect_to(concerts_path)
		else
			redirect_to(new_concerts_path)	
		end
	end

	private

	def concert_params
		params.require(:concert).permit(:artist, :venue, :city, :date, :price, :description)
	end
end
