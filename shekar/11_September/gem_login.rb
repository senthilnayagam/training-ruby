require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/student_login' do
 k = "Welcome user :" + "<br>"
 k+="<table border=1 bgcolor=grey><tr><th>User Name</th><th>Password</th><th>Permission(s)</th></tr>"
 
  uname=params[:uname]
  pwd=params[:pwd]

  db1=Mysql.new('localhost','root','root','college')
  qry="select user_name,password,permission from student_login where user_name='#{uname.to_s}' and password='#{pwd.to_s}'"
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
  end
 k+="</table>"
 k
end

