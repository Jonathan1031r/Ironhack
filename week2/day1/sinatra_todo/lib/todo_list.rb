require_relative("task.rb")


class TodoList
    attr_reader :tasks, :user
 
    def initialize(user)
		@tasks = []
        @user = user
    end
 
    def add_task(new_task)
		@tasks.push(new_task)
    end
 
    def delete_task(task_id)
		@tasks.delete_if { |the_task| the_task.id == task_id }
    end
 
	def find_task_by_id(task_id)
		@tasks.find { |the_task| the_task.id == task_id }
    end

    def sort_task
    	the_task = @tasks.sort {| task1, task2 | task1.id <=> task2.id}
    end
end

