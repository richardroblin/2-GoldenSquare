  class Todo
    def initialize(task) # task is a string
        @task = task
        if @task.empty? == true
            return fail 'No task specified'
        else 
        end
    end
  
    def task
      # Returns the task as a string
        return @task
    end
  
    def mark_done!
      # Marks the todo as done
        @task = @task + " - done!"
        return nil
      # Returns nothing
    end
  
    def done?
      # Returns true if the task is done
      # Otherwise, false
      if @task.include?('done')
        return true
      else
        return false
      end
    end
  end