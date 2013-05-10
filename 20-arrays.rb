# Ruby also has two other types of variables, the Array and the Hash

# The Array is a list of values

my_friends_favorite_numbers = [13, 17, 21, 35]

my_friends = ["John", "Angie", "Brooke", "Peter"]

# The main purpose of Arrays is grouping similar items so you can do things to them:

index = 0
my_friends.each do |friend|
  puts "#{friend} is a friend of mine."
  puts "#{friend}'s favorite number is #{my_friends_favorite_numbers[index]}"
  index = index + 1
end

# notice the do |variable| ... end, that's the syntax after .each to do those commands to that Array
# we're also keeping an index as we move through the Array so we can reference the friend's favorite number

# besides using .each do go through each element, we can also access a specific value "indexed" using an Integer

puts "The 0th element of my_friends is #{my_friends[0]}"
puts "The 1st element of my_friends is #{my_friends[1]}"




# This situation is pretty common, where we have one value and we want to use it as a key to another value
# That's where the hash comes in.  We could perform the same thing above using this code:

friends_and_their_numbers = {
  "John" => 13,
  "Angie" => 17,
  "Brooke" => 21,
  "Peter" => 35
}

# Then we'd do this:

friends_and_their_numbers.each do |friend_from_hash, favorite_number|
  puts "#{friend_from_hash} is a friend of mine."
  puts "#{friend_from_hash}'s favorite number is #{favorite_number}"
end

# much better (we don't have to keep a silly index around).

# Exercise 1:
# Try using some other array functions.  Try using the .select (similar to .each) to only select the numbers in my_friends_favorite_numbers that are less than 20
