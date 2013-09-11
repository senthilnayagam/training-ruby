require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/table' do
  con=Mysql.new 'localhost','root','root','college'
  #rollno=params[:rollno]
  query="select * from student"
  res=con.query(query)
  result= " "
  res.each do |row|
    result += row.to_s + " " + "<br>"
  end
result
end
