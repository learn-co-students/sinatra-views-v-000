require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

  get '/info' do
    erb :info
  end  ## when we go to our webpage URL/info we will see this printed


end ## class end