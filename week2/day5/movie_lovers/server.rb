require 'sinatra'
require 'sinatra/reloader'
require 'imdb' 

require_relative ("lib/movie_class.rb")



get "/" do
	erb (:home)
end	

post "/posters" do 
	@word = params[:word]
	@the_search = Imdb::Search.new(@word).movies
	@the_movies = Movie.new(@word).filter
	@answer = @the_movies.sample
	
	erb (:posters)	
end

