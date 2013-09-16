require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '/home/johnson/training-ruby/lakshmi/13sept/connectclass'
get '/rollnum' do
 obj = Connection.new 
 res=obj.connect
res
end

