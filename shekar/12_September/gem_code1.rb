require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/hi' do
  "Hello! This is Chandra."
end

get '/result_info' do
 k = "Result :" + "<br>"
 k+="<table border=1 bgcolor=grey size=1000><tr><th>Roll No</th><th>Name</th><th>Date of Birth</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Total</th><th>Average</th><th>University</th><th>Year</th></tr>"

  rollno=params[:rollno]

  db1=Mysql.new('localhost','root','root','college')
  qry="select * from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  if ds!="nil"
    ds.each do |l|
      k= k +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
    end
  else
    va="No such roll number exists!"
    return va
  end
  k+="</table>"
  return k
end

get '/result' do
s="<html>
<head><title>Result log in page</title></head>
<body>
<center>
<h2>Madras University Results 2013 - MCA (PG)</h2><br>
<form id=\"login\" action=\"/result_info\" method=\"get\">
<table border=\"1\" size=\"500\">
<tr><td align=\"center\">
Roll Number : <input type=\"text\" name=\"rollno\" value=\"rollno\"><br>
Click here <input type=\"submit\" value=\"submit\" name=\"submit\">
</td></tr>
</table>
</form>
</center>
</body>
</html>"
end
