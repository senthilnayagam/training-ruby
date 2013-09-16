require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Result
def connect()
  con=Mysql.new 'localhost','root','root','college'
  con
end
end

get '/result' do
erb:result
end

get '/rollno' do
rollno=params[:rollno]
obj=Result.new
result=' '
con=obj.connect()
qry="select * from student where rno=" + rollno.to_s
rs=con.query(qry)
#rs.each do |row| 
#result += row.join("/s")
	     	

arr1=['Roll no','Name','DOB']
arr=Array.new

rs.each do |row|
for i in 0..2
arr[i]=arr1[i]+ " : " + row[i] + "\n"
end
end
arr.to_s
end
