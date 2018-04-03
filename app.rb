require_relative 'config/environment'

class App < Sinatra::Base

		get '/' do    # Note   This are call, routes.
	     erb :index
		end


		get '/info' do
      erb :info
		end

end
