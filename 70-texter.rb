# Let's combine some ideas and build something fun for the command line.

# first require some libraries from Ruby
# if you see errors, in the Terminal type: 'gem install httparty'
require 'httparty'
require 'uri'

# don't worry about the values inside the hash, they're just for the API

my_group = {
  "Nimit Maru" => "18168305803",
  "David Yang" => "12179797638",
  "Austin Clements" => "13106637970"
}

my_group.each do |friend_name, friend_number|

  # my_number = "12179797638" # <--- !!!!put your number here
  text_message = "Hello #{friend_name} from Hacking for Hustlers!"

  my_hash = {
      :action => 'create',
      :token => '1c4e8f832afa8d42acf0a7cd4b7bcf0b3c1f4c1c1039db83f2f1eff2e34a3c6d29ef94fd56f085281344bd04',
      :my_number => friend_number,
      :message => text_message
  }

  puts my_hash

  # Here we're going to create a URL that we can put into a browser that will call the API
  query_params = URI.encode_www_form(my_hash)
  puts "This is what my query params look like: #{query_params}"
  base_url = 'https://api.tropo.com/1.0/sessions?'
  my_final_url =  base_url + query_params

  puts "This is my final URL: #{my_final_url}"
  puts "Open this in a browser and you should be getting a text!"

  HTTParty.get(my_final_url)
end