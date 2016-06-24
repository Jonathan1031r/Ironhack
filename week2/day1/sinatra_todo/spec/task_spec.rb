require_relative("../lib/task.rb")
require_relative("../lib/todo_list.rb")

task = Task.new("Buy the milk")
task.complete?
task.complete!
# task.make_incomplete!
puts task.id

task2 = Task.new("Wash the car")
task.complete?
task.update_content!("Go to gym")
puts task2.id

first_todo = TodoList.new

first_todo.add_task(task2)
first_todo.add_task(task)
first_todo.sort_task


describe Task do 
before :each do 
  @the_task = Task.new("")
end

describe "complete?" do
    it "ask if task is completed" do
      expect(@the_task.complete?).to eq(false)
  end
  end
describe "complete!" do
    it "completes task, makes true" do
      expect(@the_task.complete!).to eq(false)
  end 
  end
describe "make_incomplete!" do
    it "takes a complete task and makes it's completed status false" do
      expect(@the_task.make_incomplete!).to eq(false)
  end
  end  
describe "update_content!" do
    it "puts new text to task" do
      expect(@the_task.update_content!("Go to gym")).to eq("Go to gym")
  end
  end
describe "sort_task" do
  it "sorts all task by id" do
    expect(first_todo.sort_task).to eq([task, task2])
  end
  end

end    




