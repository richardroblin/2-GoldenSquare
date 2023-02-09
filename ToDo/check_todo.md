# EXERCISE 1 Method Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.

task_tracker = check_todo(text)

text can be anything
Returns True or False

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

check_todo("") => raise error 
check_todo("todo") => true
check_todo("some text") => false
check_todo("This text contains todo in it.")


4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.



