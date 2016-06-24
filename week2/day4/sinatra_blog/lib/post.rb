class Post	
	attr_accessor(:title, :date, :text, :category, :author)

	def initialize(title, date, text, category, author)
	@title = title
	@date = date
	@text = text
	@author = author
	@category = category

	end

	def print
		puts @title 
		puts @date
		puts @category
		puts @text
		puts @author
		puts ""
		puts "<----------------------------->"
		puts ""
	end


end	

# the_blog = Blog.new

# the_blog.add_post Post.new("The Daily Gamer", Time.new(2016, 6, 23), "New COD coming soon and YES it sucks!")
# the_blog.add_post Post.new("Food Around Town", Time.new(2016, 6, 20), "New Coyo joint right around the corner, great food.")
# the_blog.add_post Post.new("What Grinds My GEARS", Time.new(2016, 6, 23), "Jumbo J, Really.........")
# the_blog.add_post Post.new("Spoiler Alerts", Time.new(2016, 6, 23), "Dory dies in the end of movie in Finding Dory")
# the_blog.add_post Post.new("Stars Wars", Time.new(2023/ 12/ 25), "M.Falcon")
# the_blog.add_post Post.new("Star Trek", Time.new(1980/ 9/ 23), "Enterprise")
# the_blog.add_post Post.new("The Sixth", Time.new(1999/ 5/ 4), "Last but never forgotten")

# the_blog.print_page


# input = nil

# while input != "exit"
# 	puts "/nType [next] to see next page or [back] to go back"
# 	input= gets.chomp

# 	if input =="next"
# 		the_blog.go_next
# 	elsif input == "back"
# 		the_blog.go_back
# 	end
	
# 	the_blog.print_page		
# end