require "imdb"

class Movie
	
	def initialize(title)
		@the_search = Imdb::Search.new(title).movies
	end

	def filter
		@movie_array = @the_search[0..15]
			@movie_array.keep_if do |movies| 
				movies.poster != nil 
		end
		return @movie_array.take(9)
	end	

end



