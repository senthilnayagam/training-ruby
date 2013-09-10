require 'rubygems'
require 'bundler/setup'
require 'sinatra'
#require 'mysql'

get '/hi' do
 "Hello world"
end
get '/time' do
 Time.now.to_s
end

get '/hello' do

name=params[:name]
" hello "+name.to_s
end



get '/rollno' do
result=' '
student={ "name" => "Rajalakshmi ",
            "rollno" => "10",
            "subject" => "JAVA",
            "mark" => "90",
            "result" => "pass"                       
          }
student.each do |key,value|
result += value + ' '

end
result
end





















