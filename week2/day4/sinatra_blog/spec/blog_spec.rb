require_relative ('../lib/blog.rb')
require_relative ('../lib/post.rb')

RSpec.describe Blog do 
	before(:each) do
		@blog = Blog.new
end

describe "add_post" do 
	it "adds new post" do
		@blog.add_post Post.new("The Daily Gamer", Time.new(2016, 6, 23), "New COD coming soon and YES it sucks!")
		@blog.add_post Post.new("Food Around Town", Time.new(2016, 6, 20), "New Coyo joint right around the corner, great food.")
		@blog.add_post Post.new("What Grinds My GEARS", Time.new(2016, 6, 23), "Jumbo J, Really.........")
	expect(@blog.posts.length).to eq(3)	
	end
	end

describe "publish_front_page" do	
	it "prints post for viewing" do
	expect(@blog.publish_front_page).to eq([])
	end
	end
end		