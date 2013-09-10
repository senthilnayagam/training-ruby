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
"hello "+name.to_s
end

get '/db' do
result = 'RESULT IS : '

{
"name"=>"Shree",
"rollno"=>1,
"subject"=>"DBMS",
"mark"=>50

}.each do |key,value|
result +=  key.to_s

result +=  value.to_s
end

result
    
end
