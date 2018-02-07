require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get "/info" do
  	erb :info #name of file doesn't have to match the name of route, but it's best for convention's sake
  end

end