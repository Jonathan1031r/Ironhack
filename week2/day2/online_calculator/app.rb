require "sinatra"

get "/:add" do
	@add = params[:add]
	 
  erb(:calculator)
end