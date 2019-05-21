require_relative 'config/environment'

class App < Sinatra::Base

	get '/' do
		erb :index

	end

	get "/info" do
		erb :info
	end

	get "/hello" do
		erb :hello
	end

	get "/goodbye" do
		erb :goodbye
	end

	get "/date" do
		erb :date
	end
end
