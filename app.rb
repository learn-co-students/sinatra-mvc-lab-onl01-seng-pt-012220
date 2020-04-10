require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @to_translate = params[:user_phrase]
        @translated = PigLatinizer.new.piglatinize(@to_translate)
        erb :user_inputed
    end
end