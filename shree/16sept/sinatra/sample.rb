require 'rubygems'
require 'bundler/setup'
require 'sinatra'

get '/items' do
  
 erb :list
end

get '/math' do
  
 erb :math
end

get '/loop' do
  
 erb :loop
end
