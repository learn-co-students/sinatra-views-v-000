require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do

	end

  get '/' do
      "<h1>Hello World</h1>"
  end

end
