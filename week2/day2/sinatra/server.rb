require "sinatra"

get "/" do
	"hello, World!"
end

get "/hi" do
	@name = "Jonathan!"
	erb (:hi_page)
end		

get "/about" do
	erb(:about)
end	

get "/recipe" do
	@name = "red velvet cake"
	@ingredients = [
		"eggs",
		"flour",
		"food coloring",
		"cocoa",
		"buttermilk",
		"Sugar",
		"cream cheese",
	]
	erb(:recipe)
end

get "/user/:username" do
	@name = params[:username]
	
	if @name == "Jonathan" || @name == "Goonja"
		erb(:game_time)
	else	
		erb(:user_profile)
	end
end	