require_relative 'config/environment'

class App < Sinatra::Base

		get '/' do
			erb :index #tells Sinatra to render a file called index.erb
		end


		get "/info" do #will show up under url plus /info
      erb :info #name of file doesn't need to match name of route, although is convention
    end


end
