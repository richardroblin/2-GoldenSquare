# EXERCISE 1 Method Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.

reading_time = read_text(text)

text can be anything
Returns a number in minutes.

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

reading time("") = 0
reading time("hello how are you feeling today") => 6/200 

4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.



