require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/hi' do
  "Hello! This is Chandra."
  erb :sample
end
