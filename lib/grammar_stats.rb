class GrammarStats
    def initialize
      # ...
      @no_of_checks = 0 
      @passes = 0
      @fails = 0
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
    @no_of_checks +=1
      if text.empty? == true 
        @fails +=1
        return fail 'no text given'
      elsif text.start_with?(text.capitalize.chr) && text.end_with?(".")
        @passes +=1
        return true
      else 
        @fails +=1
        return false
      end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
    return (@passes / @no_of_checks) * 100
    end
  end