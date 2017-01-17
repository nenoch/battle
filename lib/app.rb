require 'sinatra/base'

class Battle < Sinatra::Application
  # enable :sessions
  use Rack::Session::Pool, :expire_after => 2592000

  get '/' do
    erb :index
  end

  # post '/names' do
  #   @player1 = params[:player1name]
  #   @player2 = params[:player2name]
  #   erb :play
  # end

  post '/names' do
    session['player1name'] = params[:player1name]
    session['player2name'] = params[:player2name]
    redirect '/play'
  end

  get '/play' do
    @player1 = session['player1name']
    @player2 = session['player2name']
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
