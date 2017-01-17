require 'sinatra/base'

class Battle < Sinatra::Application

  get '/' do
    erb :index
  end

  post '/names' do
    p params
    @name = params[:player1]
    @name = params[:player2]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
