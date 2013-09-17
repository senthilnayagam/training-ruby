require 'rubygems'
require 'bundler/setup'
require 'sinatra'

get '/home' do
erb :home
end
