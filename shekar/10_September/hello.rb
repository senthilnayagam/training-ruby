require 'sinatra'

get '/hi' do
  "Hello! This is Chandra."
end

get '/time' do
  "The time now is : " + Time.now.to_s
end

get '/hello'?name=chandra do
  "Hello"
end
