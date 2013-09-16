require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '/home/nithya/training-ruby/nithya/13sep/dbclass'

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
   #~ db_conn = Mysql.new('localhost', 'root', 'root', 'Training')
"<html><head>  
<link rel=\"stylesheet\" type=\"text/css\" href=\"mystyle.css\">
<title> your result </title></head>"
result = "" + "<body><h3><center>Your Result</h3><br><table border=\"1\" align=\"center\">
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
                 
 roll_no = params[:roll_no]
 #~ a = db_conn.query("select * from student where roll_no = #{params[:roll_no]}")
conn= Dbclass.new
rs=conn.db(roll_no)
rs.each do |row|
result += "<tr><td>"+row.join("</td><td>") + "</td></tr>"
end
 result
#~ +a.each_hash do |key, value|
#~ +result +=  key.to_s
#~ +result +=  value.to_s

#~ "<p>Invalid roll number</p><a href= /result>Back</a></body></html>"
 #~ end

 
 end 
 
 
 get '/result' do
    erb:result
 end
 
 get '/mystyle.css' do
 "
 body
{
background-color:#d0e4fe;
}
h1
{
color:orange;
text-align:center;
}
p
{
font-family:\"Times New Roman\";
font-size:20px;

}"


end

get '/home' do
erb :time
end


 
