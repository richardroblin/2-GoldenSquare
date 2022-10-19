def read_text(text)
    words = text.split(" ").size
    wpm = (words/200.to_f).ceil
    if words == 0 
        return 0
    else words > 0 
        return wpm
    end
end