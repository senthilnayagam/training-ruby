require 'rubygems'
require 'bundler/setup'
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
 k = "Result :" + "<br>"

  rollno=params[:rollno]

  db1=Mysql.new('localhost','root','root','college')
  qry="select name,dob,total,avg from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |i|
    k=k+i.join("<br>")
  end
 k
end

=begin

result={"name"=>"Chandra sekaran","rollno"=>123,"subject1"=>"C","mark1"=>89,"subject2"=>"C++","mark2"=>85,"subject3"=>".NET","mahas_value?rk3"=>92,"subject4"=>"SQL Server","mark4"=>85,"Total"=>351,"Average"=>87.75}

 if result.has_value?(rollno.to_i)
   result.each do |key,value|
     k+=key + " : " 
     k+=value.to_s + "<br>"
   end
 else
   "No record found"
 end
k
=end
