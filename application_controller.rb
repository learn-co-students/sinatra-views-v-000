class ApplicationController < Sinatra::Base

    get '/' do
        erb :index
    end

    get "/info" do
        erb :info
    end
end
