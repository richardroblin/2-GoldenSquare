def check_todo(text)
    fail "No todo in string" if text.empty?
    if text.include?("todo")
        return true
    else false
    end


end