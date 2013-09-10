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

end
