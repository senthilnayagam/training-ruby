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
end


get'/studb' do

result= 'The Result is ' + "<br>"

{
"Name  "=>"VIGNESH  ",
"RollNo "=>"19   ",
"Subject  "=>"Data_Structure  "
}.each do |key,value|


result = result+key.to_s  

result = result+value.to_s + "<br>"

end

result

end

