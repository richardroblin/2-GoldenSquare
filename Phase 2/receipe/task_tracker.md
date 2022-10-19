# {{PROBLEM}} Class Design Recipe
# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

# 2. Design the Class Interface
# Include the initializer and public methods with all parameters and return values.

class TaskTracker
    def initialize
    end

    def add_tasks(task)
    end

    -task is a string

    def task_list
    end

    -lists the tasks in alphabetical order

    def task_done(task)
    end

    -lookup task, if found, remove from list.
    -if no task found, output 'not found' message.
    
end

# 3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

 TaskTracker.add_task('hoover') => 'hoover added'
 TaskTracker.add_task('wash up') => 'wash up'

 TaskTracker.task_list => hover, wash up

 TaskTracker.task_done(hover) => 'not found'
 TaskTracker.task_done(hoover) => 'hoover done!'

 TaskTracker.task_list => wash up

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

