class TaskList
    def initialize
        @List = []
    end

    def add(task)
        @List << task
        return 'Task added'
    end
end