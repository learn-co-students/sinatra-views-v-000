require_relative 'config/environment'
#==========================================
class App < Sinatra::Base
#==================routes================== 
	# views
	get '/' do
	  erb :index
	end
	
	# info
	get "/info" do
    erb :info
  end
#========================================== 
end