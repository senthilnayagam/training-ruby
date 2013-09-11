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


"Hello "+ name.to_s + " :)"
end


get'/studbt' do




db =Mysql.new 'localhost' , 'root' , 'root' , 'college' 

rollno = params[:rollno]

result=' '

qry="SELECT * FROM student where rollno="+rollno.to_s;

ds=db.query(qry)


ds.each do |row|
result += row.join("<br>")
end
result
end
