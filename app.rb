require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      "Welcome to the Nested Forms Lab!"
    end 
    
    get '/new' do 
      
      erb :"pirates/new"
    end
    
    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |details|
       Ship.new(details)
      end 
      
      @ships = Ship.all
      
      erb :"pirates/show"
      # Ship.clear
    end 
    

  end
end
