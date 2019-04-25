require_relative 'config/environment'

class App < Sinatra::Base
	#
	# get '/' do
	# 	"<h1>Hello World</h1>"
	# end

	get '/' do
		erb :index
	end

	get "/info" do
		erb :info
  end
end
