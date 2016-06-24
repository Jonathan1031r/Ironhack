class Blog
	attr_accessor (:posts)
	def initialize
		@posts = []
		@page_start = 0
		@page_end = 2
	end

	def add_post(new_post)
		@posts.push(new_post)
	end	

	def publish_front_page
		@posts.each{ |the_post| the_post.print}
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

		current_post = @posts[@page_start..@page_end]

		current_post.each{|the_post| the_post.print}

	end

	def time
		sort_by_date = @posts.sort_by{ |the_post| the_post.date}
	end	
end
