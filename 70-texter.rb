# Let's combine some ideas and build something fun for the command line.

# first require some libraries from Ruby
# if you see errors, in the Terminal type: 'gem install httparty'
require 'httparty'
require 'uri'

# don't worry about the values inside the hash, they're just for the API

my_number = "12179797638", # <--- !!!!put your number here
text_message = "Hello there from Hacking for Hustlers!"

my_hash = {
    :action => 'create',
    :token => '1c4e8f832afa8d42acf0a7cd4b7bcf0b3c1f4c1c1039db83f2f1eff2e34a3c6d29ef94fd56f085281344bd04',
    :number => my_number,
    :message => text_message
}

# Here we're going to create a URL that we can put into a browser that will call the API
query_params = URI.encode_www_form(my_hash)
puts "This is what my query params look like: #{query_params}"
base_url = 'https://api.tropo.com/1.0/sessions?'
my_final_url =  base_url + query_params

puts "This is my final URL: #{my_final_url}"
puts "Open this in a browser and you should be getting a text!"

# Cut and paste that URL into a web browser

# Let's say we don't want to copy that URL into a browser, we can use the HTTParty Library to pretend like we have a browser in Ruby code

# Just uncomment the next line when you run this file
# HTTParty.get(my_final_url)

# Exercise 1:
# Put some of your friends into a Hash with their name and phone numbers
# and text each of them with their name