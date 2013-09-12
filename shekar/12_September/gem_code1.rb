require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/hi' do
  "Hello! This is Chandra."
end

get '/result_info' do
 k ="<html><head><title>University of Madras Result 2013 page</title></head><center><body><img src=\"/home/chandrasekar/Chan_Programs/mm.png\"><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><form><br><h3>University of Madras Results 2013 (PG) - MCA (PG)</h3><br><br>"
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
    va="<p>No such roll number exists!</p><center><br><br><a href=\'/result'\"><i>Back to home</i></a></form></body></html>"
    return va
  end
  k+="</table><center><br><br><a href=\'/result'\"><i>Back to home</i></a></form><p><ul>
<li>This is a computer gerenated result and hence are prone to system error.</li>
<li>This web site may not gaureenty the precision of subject marks.</li>
</ul></p></body></html>"
  return k
end

get '/result' do
s="<html><head><title>University of Madras Result 2013 page</title></head>
<body><img src=\'/home/chandrasekar/Chan_Programs/mm.png\'></img><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><center><br><h3>University of Madras Results 2013 (PG) - MCA</h3><br>
<form id=\"login\" action=\"/result_info\" method=\"get\">
<table border=\"1\" size=\"700\ height=\"500\">
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
