require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secrect, "secret"
    end

    get '/' do
        @session = session
        erb :index
    end 

    post '/checkout' do
        @sessions = session
        item = params["item"]
        @sessions[:item] = item
    end
end