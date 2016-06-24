require "sinatra"
require "sinatra/reloader"

require_relative "lib/task.rb"
require_relative "lib/todo_list.rb"

todo_list = TodoList.new("Eat more veggies")


get "/" do 
	@task = todo_list.task
	erb :home
end 

get "/tasks" do

	erb :tasks_index
end
