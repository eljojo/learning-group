require 'sinatra'
set :bind, '0.0.0.0'

guests = ['brigitte', 'magda', 'jose']

get '/' do
  @guests = guests
  erb :index
end

get '/add/:name' do
  @message = "hi #{params[:name]}, you're in the list!"
  guests << params[:name]
  erb :message
end