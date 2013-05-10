# Ruby also has two other types of variables, the Array and the Hash
# In this file, we'll explore the Hash

# Remember: The Hash is a dictionary of pairs: keys and values

# Let's try 
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
