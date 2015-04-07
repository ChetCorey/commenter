require 'sinatra'

get '/hello/:name' do
  "Hello there, #{params[:name]}."
end
get '/' do
  "Sup, World!"
end

get '/about' do
  'A little about me.'
end

get '/form' do
  erb :form
end


post '/form' do
  "You said '#{params[:message]}'"
end
