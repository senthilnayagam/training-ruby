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
  
name=params[:name]


"Hello "+ name.to_s + " :)"


get'/studb' do

name=params[:name]

db=Mysql.new('localhost','root','root','college')

ds=db.query("Select age from testfile where name like 'Ajay' ")

ds.to_i

end

