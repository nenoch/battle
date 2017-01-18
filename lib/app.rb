require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Application
  # enable :sessions
  use Rack::Session::Pool, :expire_after => 604800

  get '/' do
    erb :index
  end

  # post '/names' do
  #   @player1 = params[:player1name]
  #   @player2 = params[:player2name]
  #   erb :play
  # end

  post '/names' do
    $p1 = Player.new(params[:player1name])
    $p2 = Player.new(params[:player2name])

    redirect '/play'
  end

  get '/play' do
    @p1name = $p1.name
    @p2name = $p2.name
    @hp1 = 100
    @hp2 = 100
    @attack = params[:attack]
    if @attack 
      @hp1 -= 10
    end
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
