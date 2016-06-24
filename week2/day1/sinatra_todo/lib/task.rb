require_relative("todo_list.rb")

class Task
    attr_reader :content, :id, :created_at
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
        @created_at = Time.now
    end

    def complete?
    	if @complete == true
    		true
    	else
    		false
    	end		
    end

    def complete!
    	@complete == true
    end

    def make_incomplete!
    	if @complete == false
    		false
    	else
    		true
    	end	
    end

    def update_content!(new_content)
    	@content << new_content
    end
end











