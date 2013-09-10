require 'rubygems'
require 'bundler/setup'
require 'sinatra'
#require 'mysql'

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
k = "result"
{"name"=>"Chandra sekaran","rollno"=>123,"subject1"=>"C","mark1"=>89,"subject2"=>"C++","mark2"=>85,"subject3"=>".NET","mark3"=>92,"subject4"=>"SQL Server","mark4"=>85,"Total"=>351,"Average"=>87.75}.each do |key, value| 
k+=key + " " 
k+=value.to_s + "<br>"
 end
#rollno=params[:rollno]
#if result.has_value?(123)

   k
#end


=begin
  rollno=params[:rollno]
  #rollno=1
  db1=Mysql.new('localhost','root','root','college')
  qry="select name from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  dsh.each {|key, value| print key, " is ", value, "\n" }
  
  #ds.each do |i|
  #puts i.join(" ")
  #end
=end
end

