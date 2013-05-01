# Ruby also has two other types of variables, the Array and the Hash that hold data

# The Array is a list of values. The values can be numbers or strings, or even other Arrays.

# Here is an Array of strings, followed by an Array of numbers
my_friends = ["John", "Angie", "Brooke", "Peter"]
my_friends_favorite_numbers = [13, 17, 21, 35]

# The main purpose of Arrays is grouping similar items so you can do things to them.

# Say we wanted to print each friend's favorite number. One way to do it would be the following:

puts "My friend #{my_friends[0]}'s favorite number is #{my_friends_favorite_numbers[0]}."
puts "My friend #{my_friends[1]}'s favorite number is #{my_friends_favorite_numbers[1]}."
puts "My friend #{my_friends[2]}'s favorite number is #{my_friends_favorite_numbers[2]}."
puts "My friend #{my_friends[3]}'s favorite number is #{my_friends_favorite_numbers[3]}."

# notice how we're accessing each specific element of an array using array_name[array_index] where
# array_index is the element's place in order from left to right starting with zero.

# this is fine for 4 friends, but imagine how much code this would take up if we had 4000 friends!
# a better way would be to use a Loop. The perfect tool for this is the "each" method in Ruby

# The .each method lets you do something to EACH element of the array (go figure!).
# In the code below, we find each friends cooresponding favorite number in the favorite number Array and
# print it to the screen:

puts "\nNow let's do this with the power of each!"

current_index = 0
my_friends.each do
  this_friends_name = my_friends[current_index]
  this_friends_fav_num = my_friends_favorite_numbers[current_index]
  puts "My friend #{this_friends_name}'s favorite number is #{this_friends_fav_num}."
  current_index = current_index + 1
end


# Notice the "do ... end" code block that follows "my_friends.each." Below is what that means in english:
#   for EACH friend from the my_friends array, DO the following lines of code till you reach the END statement.
#
# we're also keeping an incrementing current_index variable as we move through the Array so we can reference the
# correct value in the my_friends and my_friends_favorite_numbers arrays.


# This situation is pretty common, where we have one value and we want to use it as a key to another value
# That's where the hash comes in.  We could perform the same thing as above but instead of using two arrays
# to define your friends names and fav numbers, let's just use one hash! Check out the following:

friends_and_their_numbers = {
  "John" => 13,
  "Angie" => 17,
  "Brooke" => 21,
  "Peter" => 35
}

# Then we'd do this:

puts "\nNow let's do the same thing using a Hash to hold our friends and their fav numbers!"

friends_and_their_numbers.each do |friend_from_hash, favorite_number|
  puts "My friend #{friend_from_hash}'s favorite number is #{favorite_number}."
end

# much better (we don't have to keep a silly current_index pointer around because for Hash's, Ruby gives us easy
# access to the current key and value in the array by adding this code after the DO: "|key, value|". The "key" 
# and "value" are just variables of course and can be named anything, as you see we have done in the 
# friends_and_their_numbers example above.

