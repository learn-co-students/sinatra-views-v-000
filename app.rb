require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		#tells Sinatra to render a file called index.erb
		erb :index
	end

	get "/info" do
		# we could name info.erb dogs.erb and write erb :dogs below. But
		# we keep our routes and our erb files named the same. 
		# This makes it easier to keep track of as our projects get bigger.
		erb :info
	end

end
