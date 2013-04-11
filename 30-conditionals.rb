# conditionals represent the logic of our application

# Let's combine some of our ideas

hacking_class = ["Nimit", "David", "Evan", "Zach", "Esther", "John", "Peter", "Laura"]

puts "There are #{hacking_class.size} people in the Hacking for Hustlers class!"

if hacking_class.size < 10 
  puts "There are less than 10 people in this class."
elsif hacking_class.size > 10
  puts "There are more than 10 people in this class."
else # only thing left
  puts "There only exactly 10 people in this class!"
end

# what passes for true?

if true
  puts "This will show up obviously (cause true is true)."
end

if 1
  puts "This also shows up!"
end

if 0 
  puts "This also shows up!"
end

if false
  puts "This won't show up... false is false"
end

if nil
  puts "This doesn't show up either... nil is a special value in Ruby that also means false in 'if' statements"
end

# That's it!