require 'rubygems'
require 'bundler/setup'
require 'sinatra'

get '/hi' do
  "Hello World!"
end
get '/time' do
 Time.now.to_s
end



get '/hello' do
 

"hello"

name=params[:name]
"Hello "+ name.to_s + " :)"

end
