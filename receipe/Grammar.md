# EXERCISE 1 Method Design Recipe

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.

grammar_status = check_grammar(text)

text can be anything
Returns "Grammar correct" if text starts with a capital letter and ends with the punctuation mark. 
Returns helpful instructions to correct grammar if anything else.

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

check_grammer("") = fail - no sentance given.
check_grammar("Hello world.") = "Grammar correct"
check_grammar("hello world.") = "Missing capital letter at start"
check_grammar("Hello world") = "Missing . at end"
check_grammar("hello world") = "Missing capital letter and . at end"


4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.



