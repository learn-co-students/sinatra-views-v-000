require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		# "<h1>Hello World</h1>"
		erb :index
	end

	get "/info" do
		erb :info
	end
	# get "/info" do    #add "/info" to the url
	# 	"Testing the info page"
	# end
end
