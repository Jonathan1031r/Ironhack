class SiteController < ApplicationController
	def home
		render 'home' #name of template
	end

	def contact
		render 'contact'
	end

end
