require 'rubygems'
require 'bundler/setup'
require 'sinatra'
#require 'mysql'



get '/hi' do
  "Hello World!"
end


get '/time' do
  Time.now.to_s
end

get '/hello' do
  name=params[:name]
"hello "+name.to_s
end

get '/db' do
begin
    
    con = Mysql.new 'localhost', 'root', 'root', 'college'
   
  
    res=con.query("select * from emp")
    res.each do |row|
    row.join("\s")
end
end    
    
end

get '/details'do
string="
<html>
<title> Result details </title>
<body style=\"background-color:rgb(96,96,96);\">
<h1>YOUR RESULT </h1>
<center>
<table border=1>
<tr>
<th>Roll NO</th>
<th>Name</th>
<th>Subject</th>
<th>Marks</th>
</tr>
<tr>
<th>101</th>
<th>Marishree</th>
<th>Maths</th>
<th>60</th>
</tr>
</table>
<form action=\"result\" method=\"get\">
<br>
<br>
<input type=\"submit\" value=\"Back\">
</form>
</center>
<a href= \"result\">Back</a>
</body>
</html>"
end

get '/result'do
string="
<html>
<title> your result  :
</title>
<body style=\"background-color:rgb(96,96,96);\">
<h1> EXAM RESULTS</h1>
<marquee><h3> Enter your roll no<h3> </marquee>
<center>
<fieldset style=\"width:500;height:100\">
<form action=\"details\" method=\"get\">
RollNO:<input type=\"text\" name=\"RollNO\">
<input type=\"submit\" value=\"submit\">
</form>
</fieldset>
</center>
</body>
</html>"
end


