# frozen_string_literal: true

require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :sessions_secret, 'youcannotguessthis'
    end

    # Index View
    get '/' do
        erb :index
    end

    # Checkout View
    post '/checkout' do
        session['item'] = params['item']
        @session = session
        erb :cart
    end
end
