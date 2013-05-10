# Ruby also has two other types of variables, the Array and the Hash
# In this file, we'll explore the Hash

# Remember: The Hash is a dictionary of pairs: keys and values

# Let's try the same data as Arrays but inside a Hash
friends_and_their_numbers = {
  "John" => 13,
  "Angie" => 17,
  "Brooke" => 21,
  "Peter" => 35
}

##########################################################################################
puts("------ Iterating the hash ------")

# Now we want to go through our entire hash and do something with each key and value pair
# The syntax is similar to the each for Array, but here we have two temporary variables that we create
# for each Key, Value pair (name_key and favorite_number_value)

friends_and_their_numbers.each do |name_key, favorite_number_value|
  puts "#{name_key} is a friend of mine."
  puts "#{name_key}'s favorite number is #{favorite_number_value}"
end


# Exercise 1:
# Create a lookup hash that can answer these questions:
us_states = {

}

puts "The long name of GA is #{us_states["GA"]}"
puts "The long name of CA is #{us_states["CA"]}"
puts "The long name of NY is #{us_states["NY"]}"