class TextInspectionsController < ApplicationController


	def new
		render 'new'
	end

	def create
		@text = params[:text_inspection][:user_text]

		@word_count = @text.split(" ").length

#Only for this exerise I'm creating my method in controller
#but usely it's done in modules.

		counts = Hash.new(0)

		words = @text.downcase.tr(";@#$%&*,.?!/",'').split(" ")

		words.each{|text| counts[text] += 1}

		words = counts.sort_by{|word, num| num}

		@frequency = words.last(10).reverse
		render "create"

	end
end
