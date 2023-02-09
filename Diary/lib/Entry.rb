class Entry
    def initialize(note)
      @note = note
    end

    def entry
        return @note
    end
    
    def word_count
        # Returns the number of words in the contents as an integer
        return @note.split(" ").length.to_i
    end

    def contact_number
        return @note.scan(/[0123456789]/).join if @note.scan(/[0123456789]/).empty? == false
    end
      
end