# Hi, welcome to your first Ruby file.

# To run this file, inside your Terminal, type: ruby 00-puts_and_methods.rb
# You can do that for all the files in this directory.

# Everything starting with a "#", like this line, is a comment, it doesn't do anything.
# It's just for you to leave notes to yourself - like this.  
#
# Talking about commenting in comments, so meta.

# The main way to get Ruby to output code is either through the method: puts
puts "Hello, world."

# puts is a method, methods are ways to encapsulate code and make it reusable
# To call a method, you can do either: method argument1, argument2... or method(argument1, argument2)

# In the case above, you were passing the argument "Hello, world." to the method puts.  "Hello, world." in this case is what we call a String.
# Strings are surrounded by either "" or '' and are one of the core datatypes in programming.



# To create a new method, you do this:

def my_method_to_put_strings_twice(my_string)
  puts(my_string)
  puts my_string
end


# and to call those methods, just use method_name(arg1, arg2)
my_method_to_put_strings_twice("This string appears twice.")

my_method_to_put_strings_twice("Congratulations, you now understand methods and how to output code.")

# try outputting additional text to the screen below