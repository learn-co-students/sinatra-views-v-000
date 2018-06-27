require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index  #serve the token index using the erb templating language
	end

	get "/info" do
		erb :info
	end
end
