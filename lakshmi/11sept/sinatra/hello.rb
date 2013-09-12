require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/rollno' do 
con = Mysql.new 'localhost', 'root', 'root', 'test1'
rollno = params[:rollno]
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
#qry="SELECT * FROM student";
		qry="SELECT * FROM student where rollno="+rollno.to_s;
		rs = con.query(qry)
		rs.each do |row|
		result +="<tr><td>"+ row.join("</td><td>") + "</td></tr>"
end
result
end

get '/result' do
string="<HTML>
<BODY>
<FORM action=\"/rollno\" method=\"get\">

ROLL NO: <input type=\"TEXT\" name=\"rollno\">
 <input type=\"submit\" value=\"Submit\">
</FORM >
</BODY>
</HTML>"
end

















