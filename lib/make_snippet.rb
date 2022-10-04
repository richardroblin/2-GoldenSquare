def make_snippet(arg)
    a=arg.split(" ", 10)
    b= "#{a[0]} " + "#{a[1]} " + "#{a[2]} " + "#{a[3]} " + "#{a[4]} "
    return b.rstrip!
end
