require 'sinatra'
require 'sinatra/reloader'

require_relative ("lib/post.rb")
require_relative ("lib/blog.rb")


the_blog = Blog.new

the_blog.add_post Post.new("The Daily Gamer", Time.new(2016, 6, 23), "New COD coming soon and YES it sucks!", "Lost Faith", "JonathanR")
the_blog.add_post Post.new("Food Around Town", Time.new(2016, 6, 20), "New Coyo joint right around the corner", "great food", "Johnny")
the_blog.add_post Post.new("What Grinds My GEARS", Time.new(2016, 6, 23), "Jumbo J, Really.........", "IronHack", "JumboJ")
the_blog.add_post Post.new("Spoiler Alerts", Time.new(2016, 6, 23), "Dory dies in the end of movie in Finding Dory", "Finding Dory", "Joe")
the_blog.add_post Post.new("Stars Wars", Time.new(2023, 12, 25), "M.Falcon", "Future", "JJ")
the_blog.add_post Post.new("Star Trek", Time.new(1980, 9, 23), "Enterprise", "Nerd", "Jo_G")
the_blog.add_post Post.new("The Sixth", Time.new(1999, 5, 4), "Last but never forgotten", "!", "ShitBalls")

get "/" do 
	@posts = the_blog.time
	erb (:blog)
end 

get "/more_info/:number" do
	posts = the_blog.posts
	number = params[:number].to_i
	@the_post = posts[number] 
	erb(:more_details)
end

get "/new_post" do

  erb(:new_post)
end

post "/create_post" do
  	title = params[:title]
	date = Time.now
	text = params[:text]
	author = params[:author]
	category = params[:category]
	new_post = Post.new(title, date, text, author, category)
	the_blog.add_post(new_post)
	redirect '/'
end



