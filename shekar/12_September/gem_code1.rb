require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/hi' do
  "Hello! This is Chandra."
end

get '/result_info' do
 k ="<html><head><title>University of Madras Result 2013 page</title></head><center><body><img src=\"/home/chandrasekar/Chan_Programs/mm.png\"><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><form><br><h3>University of Madras Results 2013 (PG) - MCA (PG)</h3><br><br>"
 k+="<table border=\"1\" bgcolor=\"#F0F0F0\"  size=\"1000\">
a=['Rollno','Name','DOB','Major','Mark','Major','Mark','Major','Mark','Major','Mark','Allied','Mark','Allied','Mark','Total','Average']  
  ar=""
  m=0
  rollno=params[:rollno]
  db1=Mysql.new('localhost','root','root','college')
  qry="select * from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |n|
    ar=ar + n.join().to_s
  end
  if ds!="nil"
    while m <= a.length-1
      k= k + "<tr><td>" + a[m].to_s + "</td><td>" + ar[m].to_s + "</td></tr>"
      m+=1
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
<body bgcolor=\"#F0F0F0\"><img src=\'/home/chandrasekar/Chan_Programs/mm.png\'></img><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><center><br><h3>University of Madras Results 2013 (PG) - MCA</h3><br>
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

get '/get_result' do

  k ="<html><head><title>University of Madras Result 2013 page</title></head><center><body bgcolor=\"#F0F0F0\"><img src=\"/home/chandrasekar/Chan_Programs/mm.png\"><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><form><br><h3>University of Madras Results 2013 (PG) - MCA (PG)</h3><br><br>"
 
  rollno=params[:rollno]  

  k+="<table width=\"500\">"
  db1=Mysql.new('localhost','root','root','college')
  qry="select count(*) from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  if ds == "0"
    va="<p>No such roll number exists!</p><br><br><a href=\'/result'\"><i>Back to home</i></a></form></body></html>"
    return va
  end
  db1=Mysql.new('localhost','root','root','college')	# print name
  ds=db1.query("select name from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr align=\"left\"><th>Name : </th><td>"+ l.join() + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print roll no
  ds=db1.query("select rollno from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr align=\"left\"><th>Roll No : </th><td>"+ l.join() + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print dob
  ds=db1.query("select dob from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr align=\"left\"><th>DOB : </th><td>"+ l.join() + "</td><tr>"
  end  
  k+="</table><br><table border=\"1\" width=\"500\"><tr><th>Subject</th><th>Title</th><th>Mark</th></tr>"

  db1=Mysql.new('localhost','root','root','college')	# print subject1,mark1
  ds=db1.query("select subject1,mark1 from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject2,mark2
  ds=db1.query("select subject2,mark2 from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject3,mark3
  ds=db1.query("select subject3,mark3 from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject4,mark4
  ds=db1.query("select subject4,mark4 from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject5,mark5
  ds=db1.query("select subject5,mark5 from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Allied </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print subject6,mark6
  ds=db1.query("select subject6,mark6 from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Allied </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  db1=Mysql.new('localhost','root','root','college')	# print total
  ds=db1.query("select total from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Total </th><td></td><td>"+ l.join("</td></tr>")
  end
  db1=Mysql.new('localhost','root','root','college')	# print average
  ds=db1.query("select avg from student where rollno=" + rollno.to_s)
  ds.each do |l|
    k= k +"<tr><th>Average </th><td></td><td>"+ l.join("</td></tr>")
  end
  k+="</table></form><br><a href=\'/result'\"><i>Back to home</i></a></form><p><ul>
<li>This is a computer gerenated result and hence are prone to system error.</li>
<li>This web site may not gaureenty the precision of subject marks.</li>
</ul></p></center></body></html>"  
  return k
end
