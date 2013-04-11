
# variables are ways to give names to values in your code

my_name = "David Yang"
your_name = "" # <-- put your name here

puts "#{my_name} and #{your_name} are in the same classroom!"

# Two things going on here:
# 1.  We had a String value of "David Yang" that we assigned to the variable my_name
# 2.  We called the puts method with a String and we "interpolated" our two variables into the String.
# Interpolation is putting strings together, if you put a variable inside #{} tags, it will insert the value of that
# variable into the String.

puts "You can always count on #{my_name}"

# You can even put things other than just single variables

puts "Will you still love me when I'm #{32 * 2}?"


# Variables can hold more than just strings though, they can also hold things like a "Date" (in the time sense)
require 'date' # this line tells the Ruby interpreter to pull in some functionality relating to Dates

today = Date.today()
my_birthdate = Date.parse("29-05-2013")
days_until_my_birthday = (my_birthdate - today).to_i # the to_i converts the resulting math into an "Integer", which means no fractions

puts "There are only #{days_until_my_birthday} days until #{my_name}'s birthday... better start getting ready."

# Exercise 1:
# Try assigning some of your own variables and interpolating them into strings


# Exercise 2:
# Try doing some Date math and see how many years between now and various important dates in history.

moon_landing = Date.parse("20-07-1969")
american_revolution = Date.parse("04-07-1776")