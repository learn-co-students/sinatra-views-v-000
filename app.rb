require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		"200"
		erb :index
	end

	get "/info" do
		"200"
		erb :info
	end
end