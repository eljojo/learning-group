require 'sinatra'
set :bind, '0.0.0.0'

guests = []
presents = ["chips", "club mate", "hardcore drugs"]

get '/' do
  @guests = guests
  @presents = presents
  erb :index
end

post '/add' do
  guest_name = params[:guest_name].strip
  gift       = params[:gift].strip

  if guest_name.empty? then
    @message = "Please put in your name"
  elsif gift.empty? then
    @message = "Hey #{guest_name}, you need to bring a gift!"
  else
    @message = "hi, #{guest_name}, you're in the list!"
    presents.delete(gift)
    person = {
      :name => guest_name,
      :gift => gift
    }
    guests << person
  end

  erb :message
end

