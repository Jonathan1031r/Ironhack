class Post
	def initialize(title, date, text)
		@title = title
		@date = date
		@text = text
	end	
end	

class Blog
#	def add_post
#	all_post = []
#	add_post.each{ |page| page.push(all_post) 
#		puts all_post 
#	}
#	end
end




blog = Blog.new
blog.add_post Post.new("The new", 2016, "Computers")
blog.add_post Post.new("The old", 1996, "Lights")
blog.add_post Post.new("Potatos", 1988, "Birthday")

#blog.publish_front_page
p Post
