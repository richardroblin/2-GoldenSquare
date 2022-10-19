class TaskTracker

    def initialize
        @task_list=[]
    end

    def add_task(str)
        if str.empty? == true 
            return fail 'No task specified.'
        else 
            @task_list << str
            return "#{str} added."
        end
    end

    def task_list
        return @task_list.join(', ')
    end

    def task_done(str)
        if @task_list.include?(str)  == false
            return 'not found'
        else @task_list.include?(str) == true
            @task_list.delete(str)
            return "#{str} done! #{@task_list.join(' ')} remaining..."
        end
    end
end
