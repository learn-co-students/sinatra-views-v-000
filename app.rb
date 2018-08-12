require_relative 'config/environment'

class App < Sinatra::Base

	# get '/' do
	# 	"<h1>Hello World</h>"
	# end
	get '/' do
      erb :index
    end
		get "/info" do
      erb :info
    end

end
