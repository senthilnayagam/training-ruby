require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/rollnum' do
  con=Mysql.new 'localhost','root','root','college'
  rollno=params[:rollno]
  query="select * from student where rno=" + rollno.to_s
  res=con.query(query)
  if (res)
  result = "<body bgcolor=\"#1998\"><table border=1>
	     <tr>
		<th>RollNo</th>	
		<th>Name</th>
		<th>DOB</th>
		<th>Sub1</th>
		<th>Marks1</th>
		<th>Sub2</th>
		<th>Marks2</th>
		<th>sub3</th>
		<th>Marks3</th>
		<th>Sub4</th>
		<th>Marks4</th>
		<th>Sub5</th>
		<th>Marks5</th>
		<th>Sub6</th>	
		<th>Marks6</th>
		<th>Total</th>
		<th>Avg</th>
		<th>University</th>
		<th>Result</th>
	    </tr> "
  
  res.each do |row|
      result += "<tr><td>" + row.join("</td><td>") + "</td></tr></table>"
  end
  else
     result = "<a href=\"/result\">Enter valid Roll Number</a>"
  end
  s= "<a href=\"/result\">Go back</a>"
result + s
end

get '/result' do
str= "<html><body bgcolor=\"orange\" align=\"center\"> <h2 align=\"center\">RESULTS<h2>
<form action=\"/rollnum\" name=\"result\">
<input type=\"text\" align=\"center\" name=\"rollno\">
<input type=\"submit\" value=\"Result\">
</form></body></html>"
end

