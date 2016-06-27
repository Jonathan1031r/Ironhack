require_relative ('../lib/movie_class.rb')
require ("imdb")

RSpec.describe Movie do 


describe "filterposter" do
	it ("finds first 9 movies with posters") do
		@the_search = Movie.new("ninja")
	expect(@the_search.filter.length).to eq(9)	
end
end
		
end