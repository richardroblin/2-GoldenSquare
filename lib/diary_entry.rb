class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @content = contents
    end
  
    def title
      # Returns the title as a string
      return @title
    end
  
    def contents
      # Returns the contents as a string
      return @content
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      return @content.split(" ").length.to_i
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
      return (count_words / wpm.to_f).ceil

    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
      no_of_words = wpm * minutes
      all_words = @content.split(" ")  
      chunk = all_words[0, no_of_words].join(' ') + ' '
      return chunk
    
    end
  end