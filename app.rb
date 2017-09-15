require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		# renders index.erb file @ the root
		erb :index
	end

	get '/info' do
		'Testing the info page.'
	end
end
