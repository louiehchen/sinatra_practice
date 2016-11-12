require 'sinatra'
set :views, File.join(File.dirname(__FIL__), "views")

get '/' do
  "Hello world!"
end

get '/about' do
  erb :about

end
