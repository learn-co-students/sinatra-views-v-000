#although this file in this lab is not located in the controller folder, normal convention would have this file i nthat location
require_relative 'config/environment'


class App < Sinatra::Base

	get '/' do
		erb :index
	end
	get "/info" do  #this shows that the url mapping will register off of /info
		erb :info #all this section has to do is match the name of the views file 
	end

end

#by running shotgun in terminal, it will activate the host which will allow us to view this code
