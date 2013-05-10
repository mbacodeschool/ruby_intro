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


# Exercise 1:
# Iterate over the array of hacking_class and if a person has 4 letters in their name, print their name
# if they have 5 letters in their name, print the reverse ("asdf".reverse
# otherwise, print it lowercased ("asdf".downcase)

hacking_class.each do |name|
  # your code here
end