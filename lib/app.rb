require 'sinatra'
require 'rspec-sinatra'

class Battle < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end
