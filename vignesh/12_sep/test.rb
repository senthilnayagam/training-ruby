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

result = "KALASALINGAM UNIVERSITY RESULT :" + "<br>" + "<br>"

result += "<table border=1 bgcolor=skyblue size=1000>
<tr>

<th>Roll No</th>


<th>Name</th>


<th>Date of Birth</th>


<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Total</th>
<th>Average</th>
<th>University</th>
<th>Year</th>

</tr>"
 

qry="SELECT * FROM student where rollno="+rollno.to_s;

ds=db.query(qry)


ds.each do |row|
result += "<tr><td>"+ row.join("</td><td>") + "</td></tr>"
end

result += "</table>"
result
end


get'/table' do

s="<html>
<head>
<title> KALASALINGAM UNIVERSITY 2009-2013 RESULTS </title>
</head>
<body style=\"background-image:kala.jpg\">
<marquee bgcolor=\"skyblue\"><font color=white><b> KALASALINGAM UNIVERSITY 2009-2013 RESULTS</b></font></marquee>





<br><br><br><br><center>
<form id=\"login\" action=\"/studbt\" method=\"get\">
<table border=\"1\" size=\"600\ height=\"500\">
<tr><td align=\"center\"><br><br>
Roll Number : <input type=\"text\" name=\"rollno\"><br><br>
Click here <input type=\"submit\" value=\"submit\" name=\"submit\"><br><br>
</td></tr>
</table><br><br>
</form>
</center>
</body>
</html>"

end
