require 'sinatra'

get "/" do
  "hello"
end

get "/secret" do
  "secret message"
end

get "/cat" do
  @array = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/:name" do |name|
  "Allan loves #{name}"
end
