require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		"<h1>Hello World This HTML code is inside of a '.erb' file</h1>"
	end

  get '/' do
    erb :index
  end

  get "/info" do
    erb :info
  end

end