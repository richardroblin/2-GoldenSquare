class TodoList
    def initialize
        @List = []
    end
  
    def add(todo) # todo is an instance of Todo
        @List << todo
      # Returns nothing
      return nil
    end
  
    def incomplete
      # Returns all non-done todos
      return @List.map{|e| e.task if e.done? == false}.join
    end
  
    def complete
      # Returns all complete todos
      return @List.map{|e| e.task if e.done? == true}.join
    end
  
    def give_up!
        @List.map{|e| e.mark_done! if e.done? == false}
        return @List.map{|e| e.task if e.done? == true}.join("\n")
    end
  end