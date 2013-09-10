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
 "hello " + name
end

get '/rollno' do
  con=Mysql.new 'localhost','root','root','college'
  rollno=params[:rollno]
  query="select * from student where rno=" + rollno.to_s
  res=con.query(query)
  res.each do |row|
    puts row
  end
end
