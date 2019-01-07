require_relative 'config/environment'

class App < Sinatra::Base
#controller is app.rb
	get '/' do
	  erb :index
	end

	get "/info" do
		erb :info
	end
	#http://67.205.188.72:42723/info
end
