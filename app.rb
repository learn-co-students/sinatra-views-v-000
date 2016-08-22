require_relative 'config/environment'

class App < Sinatra::Base
	# Sinatra is also configured by default to look for our .erb files in a directory called views.
	get '/' do
		erb :index  # This tells Sinatra to render a file called index.erb inside of a directory called views.
	end

	get '/info' do
		erb :info
	end

end
