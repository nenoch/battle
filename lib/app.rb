require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Application
  #set for shotgun to work but it works only on the '/'
  set :session_secret, 'super secret'

  # We are not using sessions at the moment.
  # enable :sessions ---> creates a cookie without expiring date
  # use Rack::Session::Pool, :expire_after => 604800 ---> set the cookie to expire after a week

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
    @hp1 = $p1.points
    @hp2 = $p2.points
    erb :play
  end

  get '/attack' do
    Game.new.attack($p2)
    @p1name = $p1.name
    @p2name = $p2.name
    @hp1 = $p1.points
    @hp2 = $p2.points
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
