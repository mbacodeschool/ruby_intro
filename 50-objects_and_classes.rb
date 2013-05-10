# Objects

##########################################################################################
puts("------ Objects in Ruby ------")

# Let's create a new Object, in Ruby that's as easy as...
me_myself_and_i = Object.new()


# Let's add a method to it
def me_myself_and_i.my_name
  "David Yang"
end

# then we can execute that method on the object using
puts "Me, Myself and I and my name is #{me_myself_and_i.my_name}"

# How about giving me, myself and I an age?
me_myself_and_i.age = 25
# To run this file, you'll have to comment the line above out

# This will produce an error until we do:

def me_myself_and_i.age=(age_value)
  @age = age_value
end

# Now let's run:
me_myself_and_i.age = 25

# That's right, setting an age is actually a method that's called: age=(age_value)
# The @ sign in front of age means to store the passed in age_value into an instance variable
# Instance variables are attributes of that object

# Now let's say a bit more about myself

def me_myself_and_i.name_and_age_please
  "My name is David Yang and I'm #{@age} years old."
end

puts "Officer: Name and Age Please!"
puts "David: #{me_myself_and_i.name_and_age_please}"


##########################################################################################
puts("------ Classes in Ruby ------")

# What if we want to create a bunch of people with names and ages?
# We create a class of objects

class PeopleWithNamesAndAges
 
  def name_and_age_please
    "My name is David Yang and I'm #{@age} years old."
  end

  def my_name
    "David Yang"
  end

  def age=(age_value)
    @age = age_value
  end
end

# Now we can do:

david_yang_redux = PeopleWithNamesAndAges.new
david_yang_redux.age = 25
puts "Name and Age Please: #{david_yang_redux.name_and_age_please}"


# One common shorthand you'll see a lot
# instead of create age= everywhere to set an instance variable, you can do use attr_accessor :age
# like so:

class ShorterPeopleWithNamesAndAges
  attr_accessor :age

  def name_and_age_please
    "My name is David Yang and I'm #{@age} years old."
  end

  def my_name
    "David Yang"
  end
end


# Exercises:

# Exercise 1:
# Make the name settable on PeopleWithNamesAndAges and create one for yourself
