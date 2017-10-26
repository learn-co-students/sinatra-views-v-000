require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		# "<h1>Hello World</h1>" just stuffing the html within this file
		erb :index #loads index.erb
	end

	get "/info" do
    erb :info
  end

end
