# Ruby also has two other types of variables, the Array and the Hash
# In this file, we'll explore the Array

# Remember: The Array is a list of values

##########################################################################################
puts("------ Creating and accessing the array ------")

my_friends_favorite_numbers = [13, 17, 21, 35]

my_friends = ["John", "Angie", "Brooke", "Peter"]

# How do we access our values inside the Array?  The syntax looks like:
puts my_friends[0]  # This will output John


##########################################################################################
puts("------ Iterating the array ------")

# Now we want to go through our entire array and do something with each value
# Let's create an index to point to the first element of the Array
index = 0
# while the index is less than the size of the array (in this case: 4)
# we're also keeping an index as we move through the Array so we can reference the friend's favorite number
while index < my_friends.size() do
  friend = my_friends[index] # grab an element from the array and put it into the variable friend

  puts "#{friend} is a friend of mine."
  puts "#{friend}'s favorite number is #{my_friends_favorite_numbers[index]}"

  index = index + 1
end


##########################################################################################
puts("------ Now with each ------")

# This task is so common in coding (going over the elements of an array) that there is a very common shorthand:
my_friends.each do |friend|
  puts "#{friend} is a friend of mine."
end

# notice this: 
# do |variable|
#   .. code ..
# end
#
# We're creating a "block" of code that we'll run for every element in the Array
# For each element, we run that code and copy the value into a temporary variable specified between the |'s, in this case friend

# This makes it so we don't have to create the friend variable ourself and also avoids us having the manage the index


##########################################################################################

# Exercises:
# Explore other methods of Array that are provided by Ruby at http://www.ruby-doc.org/core-1.9.3/Array.html


# Exercise 1:
# Use join (http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-join) to create a single String of my_friends



# Exercise 2:
# Use map (http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-map) to lowercase every person in my_friends



# Exercise 3:
# Use select (http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-select) to select only favorite numbers under 20
