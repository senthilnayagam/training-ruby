require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '~/training-ruby/shekar/16_September/test'

get '/hi' do
  s=""
  obj=ABC.new
  s+= "Values from constructor <br>"
  s+= obj.print_values()
  obj.assign_values(100,100)
  s+= "<br>Values from methods<br>"
  s+= obj.print_values()
  s+="<br><a href=\"/hii\">link</a>"
  return s
end

get '/hii' do  
  erb :sample1
end
