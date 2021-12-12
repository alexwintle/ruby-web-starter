require "sinatra"
require "sinatra/reloader" if development?

get '/' do
  "hello world"
end

get '/secret' do
  "spooky season is upon us"
end

get '/magic-eight-ball' do
  "the answer is on the horizon"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end
