require "sinatra"
require "artii"

get "/" do #when a user makes a get request to the homepage they see this block
	erb(:home)
end 


get "/asciify/:word/?:font?/?:secret?" do 
	@word = params[:word]
	@font = params[:font]
	@secret = params[:secret]
	
	if (@secret == "secret") && (@word == "pig") && (@font == "special")
		erb(:animal)
	else
	erb(:asciify)
	end
	
end

