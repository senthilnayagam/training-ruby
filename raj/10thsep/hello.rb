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
 # con=Mysql.new 'localhost','root','root','college'
  #rollno=params[:rollno]
  #query="select * from student where rno=" + rollno.to_s
  #res=con.query(query)
  
  res=  "<br>"
  student={ "rno" => "raj",
                   "name" => "102",
                   "sub1" => "bio",
                   "marks" => "89",
                   "result" => "pass"
                    }.each do |key,value|
    
res += key.to_s + " "

res += value.to_s + "<br>"



end
  res
end
