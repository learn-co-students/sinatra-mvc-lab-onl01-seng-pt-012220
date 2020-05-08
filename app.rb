require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        p = PigLatinizer.new
        phrase = params[:user_phrase]
        @latinized_text = p.to_pig_latin(phrase)
    
        erb :user_output
    end

end