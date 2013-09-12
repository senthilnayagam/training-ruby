require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/rollno' do 
con = Mysql.new 'localhost', 'root', 'root', 'test1'
rollno = params[:rollno]
head="<html><title>Result</title><head><link rel=\"stylesheet\" type=\"text/css\" href=\"/mystyle.css\"></link>
<style>

table
{
background-color:#D8BFD8;
color:#4B0082;
}
marquee
{
color:	#008B8B;
font-size:35;
}
h1{
color:#FFFFFF;
font-family: arial, verdana, sans-serif;
font-size:35px;
}
</style>
<script>
function goBack()
  {
  window.history.back()
  }
</script>
<br/>
<marquee>Your result is </marquee><br/><br/>
</head><body style=\"background-color:#4B0082;\">"

str="<center><input type=\"button\" value=\"Back\" onclick=\"goBack()\" ></center>"

foot="</body></html>"
result=' '+" <table border=1>
		<tr>
		  <th>rollno</th>
		    <th>name</th>
		    <th>Date of Birth</th>
		    <th>subject1</th>
		    <th>mark 1</th>
		    <th>subject 2</th>
	            <th>mark2</th>
		    <th>subject3</th>
		    <th>mark 3</th>
		    <th>subject4</th>
		    <th>mark 4</th>
		    <th>subject5</th>
		    <th>mark 5</th>
		    <th>subject6</th>
		    <th>mark 6</th>
		    <th>total</th>
	            <th>average</th>
                    <th>University</th>
                    <th>year</th>
                 </tr>"

qry="SELECT * FROM student where rollno="+rollno.to_s;
rs = con.query(qry)
rs.each do |row|
result +="<tr><td>"+ row.join("</td><td>") + "</td></tr></table><br/><br/></br>" 
end
head+result+str+foot
end

get '/result' do
string="<HTML>
<title>	Result :</title>
<head><h1> Result</h1></head>
<style>
body{
margin-left:300px;
color:	#008B8B;
}
h1{
color:	#FFFFFF;
font-family: arial, verdana, sans-serif;
font-size:35px;
}
</style>
<BODY bgcolor=\"#483D8B\" background=\"/imag1.jpg\">
<FORM action=\"/rollno\" method=\"get\">
<fieldset style=\"text-align:center; width: 500px; height: 100px;\">
<legend>Result : </legend>
ROLL NO: <input type=\"TEXT\" name=\"rollno\"><br/><br/>
<input type=\"submit\" value=\"Submit\">
</fieldset>
</FORM >
</BODY>
</HTML>"
end






