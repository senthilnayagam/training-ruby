require 'rubygems'
require 'bundler/setup'
require 'sinatra'

get '/hi' do
 "Hello world"
end
get '/time' do
 Time.now.to_s
end

get '/hello' do

name=params[:name]
" hello "+name.to_s
end
