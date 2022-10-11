# {{PROBLEM}} Class Design Recipe
# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

# 2. Design the Class Interface
# Include the initializer and public methods with all parameters and return values.

class MusicList
    def initialize
    end

    def add_music(track)
    end

    -track is a string

    def music_list
    end

    -lists the tasks in order
    -if list is empty, out 'List is empty' message.
    
end

# 3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

 MusicList.list_tracks =>  "List is empty"

 MusicList.add_track('Thriller') => 'Thriller'
 MusicList.add_track('Sweet Child Of Mine') => 'Sweet Child Of Mine'

 MusicList.list_tracks => Thriller, Sweet Child Of Mine

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
