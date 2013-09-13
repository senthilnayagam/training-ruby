require 'rubygems'
require 'bundler/setup'
require 'sinatra'

get '/hi/:name' do
  
 erb :thtml
end

get '/time' do
  erb :time
end
