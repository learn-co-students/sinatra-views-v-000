require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
    erb :index
		# "<h4>Hellleeerr!!</h4>"
	end

	get "/info" do
		erb :info
	end
end
