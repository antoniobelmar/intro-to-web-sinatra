require 'sinatra'

get "/" do
  "hello"
end

get "/secret" do
  "secret message"
end

get "/cat" do
  erb(:index)
end

get "/:name" do |name|
  "Allan loves #{name}"
end
