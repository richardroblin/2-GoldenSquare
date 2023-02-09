# Diary -  Multi-Class Planned Design Recipe
#1. Describe the Problem
#Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

#2. Design the Class System
#Consider diagramming out the classes and their relationships. Take care to focus on the details you see as important, not everything. The diagram below uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com

Keep Diary
  - > Add entries
  - > Read entries, based on time available and speed.
  - > List phone numbers
  
Keep TaskList
  - > Add tasks


# Also design the interface of each class in more detail.

class Diary
  def initialize
    # ...
  end

  def add(entry) # Entry is an instance of Entry
    # Entry gets added to the Diary
    # Returns nothing
  end

  def list(entries)
    # List all entries.
  end
  
  def read_past_entry(time_available, reading_speed) 
    # time_available in minutes.
    # reading speed in words per minute wpm.
  end

  def contact_numbers
    # searches all entries for phone numbers (numbers of length >10)
  end
end

class Entry
  def initialize(note) 
    @note = note
    # note is a string containing letter and numbers.
  end

  def entry
     return note
  end

  def word_count
    # counts the number of words in the entry
  end

end


class TaskList
  def initialize
  end

  def add(task) # where task is an instance of Task
    returns 'Task added'
  end

end

class Task
  def task #a string, containing the task to be done
  end
end

#3. Create Examples as Integration Tests
#Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# Add diary entries
my_diary = Diary.new
entry_1 = Entry.new("This is my first entry")
entry_2 = Entry.new("This is my second entry and its cool!")
#returns 'entry added'

# Gets all diary entries
my_diary = Diary.new
entry_1 = Entry.new("This is my first entry")
entry_2 = Entry.new("This is my second entry and its cool!")
my_diary.add(entry_1)
my_diary.add(entry_2)
my_diary.list
#lists all entries.

#returns second entry

my_diary = Diary.new
entry_1 = Entry.new("This is my first entry")
entry_2 = Entry.new("This is my second entry and its cool!")
my_diary.add(entry_1)
my_diary.add(entry_2)
my_dairy.read_past_entry(1, 6)

# select diary entry based on time available (1 minute, 6 wpm)
my_diary = Diary.new
entry_1 = Entry.new("This is my first entry")
entry_2 = Entry.new("This is my second entry and its cool!")
my_diary.add(entry_1)
my_diary.add(entry_2)
my_dairy.read_past_entry(1, 6)

# search phone numbers in my Diary
my_diary = Diary.new
entry_1 = Entry.new("This is my first entry")
entry_2 = Entry.new("This is my second entry and its cool!")
entry_3 = Entry.new("This is an entry with a phone number 012345678910")
my_diary.add(entry_1)
my_diary.add(entry_2)
my_dairy.search 

my_tasklist = Diary.new
task_1 = Task.new("This is my first task")
task_2 = Task.new("This is my second task")



#4. Create Examples as Unit Tests
#Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

#Create a new entry

en1 = entry.new("This is my first entry")
en1.entry = "This is my first entry"

en1 = entry.new("This is my first entry")
en1.word_count = 5


#Create a new task
task = task.new("This is my first task")
t1.task = "This is my first task"


#5. Implement the Behaviour
#After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.