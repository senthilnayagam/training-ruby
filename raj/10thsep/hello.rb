require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/hi' do
  "Hai.. welcome to Railsfactory!"
end

get '/time' do
    "Today date and time:: " + Time.now.to_s
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
  student={ "RNO" => "101",
                   "NAME" => "RAJ",
                   "SUB" => "COMPUTERS",
                   "MARKS" => "89",
                   "RESULT" => "PASS"
                    }.each do |key,value|
    
res += key.to_s + " -> "

res += value.to_s + "<br>"



end
  res
end
