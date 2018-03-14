describe 'App' do

  describe 'GET /' do


    it 'loads the index.erb file' do
      get '/'
      expect(last_response.body).to include("Hello World")
      expect(last_response.body).to include("This HTML code is inside of a '.erb' file")
    end
  end


    it 'loads info.erb in the view' do
      get '/info'
      expect(last_response.body).to include("Info Page")
      expect(last_response.body).to include("This is the info page:")
    end
  end
