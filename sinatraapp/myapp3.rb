# myapp3.rb
require 'sinatra'
get '/' do
  erb :home
end

post '/display' do
  erb :show
end
