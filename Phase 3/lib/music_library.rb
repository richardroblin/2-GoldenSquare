

class MusicLibrary
    def initialize
      @musiclib = []
    end
  
    def add(track) # track is an instance of Track
      # Track gets added to the library
      # Returns nothing
      @musiclib << track
    end
  
    def all
      # Returns a list of track objects
      return @musiclib
      
    end
    
    def search(keyword) # keyword is a string
      # Returns a list of tracks that match the keyword
        return @musiclib.select{|e| e.matches?(keyword) == true}
    end
  end