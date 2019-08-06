require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
    end 
    
    get '/new' do 
      
      erb :new
    end
    
    post '/pirates' do 
      @pirate = Pirate.new(pirate['name'], pirate['weight'], pirate['height'])
      
      pirate[ships].each do |details|
       Ship.new(details)
      end 
      
      @ships = Ship.all
      
      erb :show
      Ship.clear
    end 
    

  end
end
