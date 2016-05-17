require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative 'models/shoes'

  get '/' do 
    erb (:home)
  end

  get '/shoos/new' do 
    erb(:new)
  end

  get '/shoos' do
    @shoos = Shoo.all
    erb(:index)
  end

  post '/shoos' do 
    @shoo = Shoo.new(params)
    @shoo.save
    erb(:create)
  end
