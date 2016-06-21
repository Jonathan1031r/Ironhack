require_relative("../lib/task.rb")


describe Task do 
before :each do 
	@the_task = Task.new("blah")
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
    expect(@the_task.update_content!).to eq("Buy the milk")
	end
	end
end    