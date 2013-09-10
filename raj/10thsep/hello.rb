require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/hi' do
  "Hello World!"
end

get '/time' do
  Time.now.to_s
end

get '/hello' do
name=params[:name]
  "hello " + name.to_s
end


get '/rollno' do
con=Mysql.new 'localhost','root','root','college'
res=con.query("select * from student where rno=101")
res.each do |row|
puts row
end
end
