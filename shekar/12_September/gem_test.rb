require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/test' do
 k ="<html><head><title>University of Madras Result 2013 page</title></head><center><body><img src=\"/home/chandrasekar/Chan_Programs/mm.png\"><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><form><br><h3>University of Madras Results 2013 (PG) - MCA (PG)</h3><br><br>"
=begin
 k+="<table border=1 bgcolor=grey size=1000><tr><th>Roll No</th><th>Name</th><th>Date of Birth</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Subject</th><th>Mark</th><th>Total</th><th>Average</th><th>University</th><th>Year</th></tr>"
=end
  rollno=params[:rollno]

# starts
  k+="<table width=\"500\">"
  db1=Mysql.new('localhost','root','root','college')
  qry="select count(*) from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  if ds == "0"
    va="<p>No such roll number exists!</p><br><br><a href=\'/result'\"><i>Back to home</i></a></form></body></html>"
    return va
  end
  db1=Mysql.new('localhost','root','root','college')	# print name
  qry="select name from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Name : </th><td>"+ l.join() + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print dob
  qry="select dob from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>DOB : </th><td>"+ l.join() + "</td><tr>"
  end
  k+="</table><br><table border=\"1\" width=\"500\"><tr><th>Subject</th><th>Title</th><th>Mark</th></tr>"
  db1=Mysql.new('localhost','root','root','college')	# print subject1,mark1
  qry="select subject1,mark1 from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Major : </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject2,mark2
  qry="select subject2,mark2 from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Major : </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject3,mark3
  qry="select subject3,mark3 from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Major : </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject4,mark4
  qry="select subject4,mark4 from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Major : </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject5,mark5
  qry="select subject5,mark5 from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Allied : </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject6,mark6
  qry="select subject6,mark6 from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Allied : </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print total
  qry="select total from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |l|
    k= k +"<tr><th>Total : </th><td></td><td>"+ l.join("</td></tr>")
  end
  db1=Mysql.new('localhost','root','root','college')	# print average
  ds=db1.query("select avg from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Average : </th><td></td><td>"+ l.join("</td></tr>")
  end
  k+="</table></form></center></body></html>"  
  return k
# ends

=begin
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
=end
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
