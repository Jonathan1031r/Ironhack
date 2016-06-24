require_relative ('../lib/post.rb')
require_relative ('../lib/blog.rb')


RSpec.describe Post do

  it("#title returns title") do
  	@post1 = Post.new("The Daily Gamer", Time.new(2016, 6, 23), "New COD coming soon and YES it sucks!")
    @post2 = Post.new("Spoiler Alerts", Time.new(2016, 6, 23), "Dory dies in the end of movie in Finding Dory")
    expect(@post1.title).to eq("The Daily Gamer")
    expect(@post2.title).to eq("Spoiler Alerts")
  end

  it("#text returns text") do
  	@post1 = Post.new("The Daily Gamer", Time.new(2016, 6, 23), "New COD coming soon and YES it sucks!")
    @post2 = Post.new("Spoiler Alerts", Time.new(2016, 6, 23), "Dory dies in the end of movie in Finding Dory")
  	expect(@post1.text).to eq("New COD coming soon and YES it sucks!")
    expect(@post2.text).to eq("Dory dies in the end of movie in Finding Dory")
  end
end

