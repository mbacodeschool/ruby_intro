# More fun things to do:

# first require some libraries from Ruby
# if you see errors, in the Terminal type: 'gem install httparty'
require 'httparty'
require 'uri'

my_stock = 'GOOG'


page_data = HTTParty.get("http://finance.yahoo.com/d?s=#{my_stock}&f=nl1")

# don't worry about this line - it's basically taking a complex page and stripping out everything
price = get_data.gsub(/\"/, '').chop.split(',')[1]
puts "The price of " + my_stock + " today was #{price}"


# Exercise1:
# Make this work for multiple stocks like my_stocks = ['GOOG', 'MSFT']


# Exercise2:
# Make this text you the stock price for one stock whenever it's run.