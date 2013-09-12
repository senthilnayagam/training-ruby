require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/rollno' do 
con = Mysql.new 'localhost', 'root', 'root', 'test1'
rollno = params[:rollno]
head="<html><title>Result</title><head><script>
function goBack()
  {
  window.history.back()
  }
</script><marquee>Your result is </marquee></head><body>"
str="<input type=\"button\" value=\"Back\" onclick=\"goBack()\">"

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
result +="<tr><td>"+ row.join("</td><td>") + "</td></tr></table>" 
end
head+result+str+foot
end

get '/result' do
string="<HTML>
<title>	Result :</title>
<head><h1> Result</h1></head>
<BODY>
<FORM action=\"/rollno\" method=\"get\">

ROLL NO: <input type=\"TEXT\" name=\"rollno\">
 <input type=\"submit\" value=\"Submit\">

</FORM >
</BODY>
</HTML>"
end






