require 'sinatra'

get "/" do
  "hello"
end

get "/secret" do
  "secret message"
end

get "/random-cat" do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/named-cat" do
  p params
  @name = params[:name].capitalize
  @age = params[:age]
  erb(:index)
end

get "/:name" do |name|
  "Allan loves #{name}"
end
