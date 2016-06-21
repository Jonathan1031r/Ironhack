class Blog
	def initialize
		@post = []
		@page_start = 0
		@page_end = 2
	end

	def add_post(new_post)
		@post.push(new_post)
	end	

	def publish_front_page
		@post.each{ |the_post| the_post.print}
	end

	def go_next
		@page_start += 3
		@page_end += 3
	end

	def go_back
		@page_start -= 3
		@page_end -= 3
	end

	def print_page
		puts ""

		current_post = @post[@page_start..@page_end]

		current_post.each{|the_post| the_post.print}

	end

	def time
		sort_by_date = @post.sort{ |the_post| the_post.date}
	end	
end

class Post	
	attr_accessor(:title, :date, :text)

	def initialize(title, date, text)
	@title = title
	@date = date
	@text = text
	end

	def print
		puts @title 
		puts @date
		puts @text
		puts ""
		puts "<===================>"
		puts ""
	end

end	





the_blog = Blog.new
the_blog.add_post Post.new("The new", Time.new(2016/ 12/ 7), "Computers")
the_blog.add_post Post.new("The old", Time.new(1996/ 7/ 20), "Lights")
the_blog.add_post Post.new("Potatos", Time.new(1988/ 6/ 4), "Birthday")
the_blog.add_post Post.new("Stars wars", Time.new(2023/ 12/ 25), "M.Falcon")
the_blog.add_post Post.new("Star Trek", Time.new(1980/ 9/ 23), "Enterprise")
the_blog.add_post Post.new("The Sixth", Time.new(1999/ 5/ 4), "Last but never forgotten")

the_blog.print_page


input = nil

while input != "exit"
	puts "/nType [next] to see next page or [back] to go back"
	input= gets.chomp

	if input =="next"
		the_blog.go_next
	elsif input == "back"
		the_blog.go_back
	end
	
	the_blog.print_page		
end