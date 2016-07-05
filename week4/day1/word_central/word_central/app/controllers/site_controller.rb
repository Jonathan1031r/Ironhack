class SiteController < ApplicationController
	def home
		render 'home' #name of template
	end

	def new
		render 'new'
	end

end
