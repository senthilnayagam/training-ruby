#require 'rubygems'
#require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/hi' do
  "Hello! This is Chandra."
end

get '/time' do
  "The time now is : " + Time.now.to_s
end

get '/hello'do
  "Hello"
  name=params[:name]
  "Hello " + name.to_s + " Welcome!"
end

get '/student_info' do
  rollno=params[:rollno]
  #rollno=1
  db1=Mysql.new('localhost','root','root','college')
  qry="select name from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds
  
  #ds.each do |i|
  #puts i.join(" ")
  #end
end

