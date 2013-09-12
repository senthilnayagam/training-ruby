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
name = params[:name]
"hello "+name.to_s
end

get '/your_result' do
   db_conn = Mysql.new('localhost', 'root', 'root', 'Training')
"<html><head>  
<title> your result </title></head>"
result = "" + "<table border=\"1\" align=\"center\">
		<tr>
		  <th>rollno</th>
		    <th>name</th>
		    <th>marks1</th> 
        <th>marks2</th>
        <th>marks3</th>
        <th>marks4</th>
        <th>marks5</th>
        <th>average</th>
        <th>result</th>
                 </tr>"
                 
 params[:roll_no]
 a = db_conn.query("select * from student where roll_no = #{params[:roll_no]}")
if !(a == nil)
a.each do |row|
result += "<tr><td>"+row.join("</td><td>") + "</td></tr>"
end
 result
#~ +a.each_hash do |key, value|
#~ +result +=  key.to_s
#~ +result +=  value.to_s
else
"<p>Invalid roll number</p><a href= /result>Back</a>"
 end

 
 end 
 
 get '/result' do
    "<html>
    <head>
    <title>result</title>
    <body>
    </head>
    <center><h3>Submit ur roll number to know ur result</h3>
    <form action=\"/your_result\" method= \"get\">
    <center>
    Roll_no:<input type= \"text\" name= \"roll_no\">
<input type=\"submit\" value= \"submit\">
</form>
</body>
</html>"
end
