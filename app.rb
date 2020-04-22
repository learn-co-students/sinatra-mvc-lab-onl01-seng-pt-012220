require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    # Create a POST method in your controller (app.rb) to receive your form's params

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do 

        ring = PigLatinizer.new
        @string = ring.pig(params[:user_phrase])  
        erb :piglatinize
    end

    end