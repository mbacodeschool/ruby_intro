# Don't worry about this file - we'll go over it in class
# If you understand this file, you're well on your way to being a Ruby AND a Ruby on Rails hacker!
class FriendDatabase
  @@database = [
    { :name => "David Yang", :phone_number => "2179797638" },
    { :name => "Nimit Maru", :phone_number => "4182930102" },
    { :name => "Laura Huang", :phone_number => "3213123511" }
  ]

  def self.find_by_name(name)
    @@database.select do |row_hash|
      row_hash[:name] == name
    end
  end

  def self.complex_query_to_get_all_rows
    @@database
  end

end

class FriendModel
  attr_accessor :name
  attr_accessor :phone_number

  def initialize(initial_values)
    @name = initial_values[:name]
    @phone_number = initial_values[:phone_number]
  end

  def self.all
    results = FriendDatabase.complex_query_to_get_all_rows
    model_results = []
    results.each do |result|
      model_results << FriendModel.new(result)
    end
    model_results
  end

  def self.get_best_friend
    results = FriendDatabase.find_by_name("David Yang")
    model_results = []
    results.each do |result|
      model_results << FriendModel.new(result)
    end
    model_results
  end
end

class FriendView
  def self.friend_view(friend)
    "<li>#{friend.name} has a phone number of #{friend.phone_number}</li>\n"
  end
end

class FriendsView
  def self.friends_view(friend_array)
    output = ""
    friend_array.each do |friend|
      output << FriendView.friend_view(friend)
    end
    "<ul>#{output}</ul>"
  end
end

class ApplicationLayoutView
  def self.layout(content)
    # This <<HTML_OUTPUT thing is called a HereDoc, it just is a multi-line string
    application_layout = <<HTML_OUTPUT
<html>
  <body>
    #{content}
  </body>
</html>
HTML_OUTPUT
  end
end

class FriendController
  def self.index
    friends_array = FriendModel.all
    friends_output = FriendsView.friends_view(friends_array)
    ApplicationLayoutView.layout(friends_output)
  end

  def self.best_friend
    friends_array = FriendModel.get_best_friend
    friends_output = FriendsView.friends_view(friends_array)
    ApplicationLayoutView.layout(friends_output)
  end
end

class MyFriendsAppRouter
  def self.get_friends
    FriendController.index
  end

  def self.get_best_friend
    FriendController.best_friend
  end
end



## setup the web server and display the output of the MyWebServer class
require 'webrick'

include WEBrick

port = 5000

puts "Starting the server: http://#{Socket.gethostname}:#{port}"
server = HTTPServer.new(:Port => port)

server.mount_proc '/' do |request, response|
  response.body = MyFriendsAppRouter.get_friends
end

server.mount_proc '/best_friend' do |request, response|
  response.body = MyFriendsAppRouter.get_best_friend
end

trap("INT") { server.shutdown }
server.start
