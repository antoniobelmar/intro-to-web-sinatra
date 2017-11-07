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

post "/named-cat" do
  p params
  @name = params[:name]
  erb(:index)
end

get "/form" do
  erb(:form)
end
# 
# get "/:name" do |name|
#   "Allan loves #{name}"
# end
