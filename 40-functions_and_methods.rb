# In this file, we'll explore creating and calling "methods" a.k.a. "functions"

# A method is a block of code that you can call to run and pass certain inputs 

##########################################################################################
puts("------ Creating Methods ------")

# To create a new method, you do this:
def my_methods_name(string_parameter)
  puts(string_parameter)
  puts(string_parameter)
end

# and to call those methods, just use method_name(parameter1, parameter2)
my_methods_name("This string appears twice.")

my_methods_name("Congratulations, you now understand methods and how to output code.")

##########################################################################################
puts("------ Methods and Math ------")

# Methods also generally return a value
def add_two_numbers(number1, number2)
  return number1 + number2
end

def multiply_two_numbers(number1, number2)
  return number1 * number2
end


puts("The output of add_two_numbers(12,13) is #{add_two_numbers(12, 13)}")
puts("The output of multiply_two_numbers(12,13) is #{multiply_two_numbers(12, 13)}")


##########################################################################################
puts("------ Exercises ------")

# Exercise 1
# Try creating a method called puts_strings_x_times(times, string) that takes a number and a string and outputs it "times" times

def puts_strings_x_times(times, string)
  # put your code here
end

puts_strings_x_times(3, "You should see this three times!")
puts_strings_x_times(2, "2 is the luckiest number, that you've ever seen.")


# Exercise 2
# Creating a method called add_array_of_numbers that takes an array and uses add_two_numbers
def add_array_of_numbers(number_array)

end

total_sum = add_array_of_numbers([1,2,3,4,5,6,7,8,9,10])
puts("The value of total_sum should be #{total_sum}.")