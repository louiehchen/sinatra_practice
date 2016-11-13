require 'sinatra'


get '/' do
  "Hello world!"
end

get '/about' do
  @ice_cream_cones = rand(30) + 1
  erb :about
end

get '/greetings/:name' do
  "Hey #{params[:name]}!"
end

get '/cities/:city/greetings/:name' do
  "Hey #{params[:name]}! Welcome to the #{params[:city]} greeting page!"
end

get '/greetings' do
  erb :greetings
end

post '/custom_greetings' do
  @greeting = params[:greeting]
  erb :greetings
end
