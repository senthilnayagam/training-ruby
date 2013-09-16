require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '~/training-ruby/shekar/16_September/employee'

get '/get_input' do
   s="<html><body><form ><br><div align=\"/center\">"
   res=0 
   s+="</div></form></body></html>"
end

get '/employee' do  
  erb :employee
end
