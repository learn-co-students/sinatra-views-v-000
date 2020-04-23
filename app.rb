require_relative 'config/environment'

class App < Sinatra::Base

	# get '/' do
	# 	"<h1>Hello World</h1>"
	# end

	get '/' do
      erb :index
    end

	get '/info' do
		erb :info
	end


# end
# =======
#   erb :index
#   end

# 	get "/info" do
# 		erb :info
# 	end
	
	
end 
# >>>>>>> 45d0158a8497990c8088dcfa7383c890b64c2507
