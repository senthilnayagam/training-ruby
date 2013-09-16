require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '/home/chandrasekar/training-ruby/shekar/13_September/connection'
#include Enumerable

get '/hi' do
  "Hello! This is Chandra."
  erb :sample
end

get '/result_info' docon.dml_select_name(rollno)
 k ="<html><head><title>University of Madras Result 2013 page</title></head><center><body><img src=\"/home/chandrasekar/Chan_Programs/mm.png\"><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><form><br><h3>University of Madras Results 2013 (PG) - MCA (PG)</h3><br><br>"
 k+="<table border=\"1\" bgcolor=\"#F0F0F0\"  size=\"1000\">"
a=['Rollno','Name','DOB','Major','Mark','Major','Mark','Major','Mark','Major','Mark','Allied','Mark','Allied','Mark','Total','Average']  
  ar=""
  m=0
  rollno=params[:rollno]
  db1=Mysql.new('localhost','root','root','college')
  qry="select * from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  ds.each do |n|
    ar=n.join(",").to_scon.dml_select_name(rollno)
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
  k+="</table><center><br><br><a href=\'/rcon.dml_select_name(rollno)esult'\"><i>Back to home</i></a></form><p><ul>
<li>This is a computer gerenated result and hence are prone to system error.</li>
<li>This web site may not gaureenty the precision of subject marks.</li>
</ul></p></body></html>"
  return k
end

get '/result' do
s="<html><head><title>University of Madras Result 2013 page</title></head>
<body bgcolor=\"#F0F0F0\"><img src=\'/hcon.dml_select_name(rollno)ome/chandrasekar/Chan_Programs/mm.png\'></img><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><center><br><h3>University of Madras Results 2013 (PG) - MCA</h3><br>
<form id=\"login\" action=\"/get_result\" method=\"get\">
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
  con=Connection.new
  rollno=params[:rollno]  

  k+="<table width=\"500\">"
  db1=Mysql.new('localhost','root','root','college')
  qry="select count(*) from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  if ds == "0"
    va="<p>No such roll number exists!</p><br><br><a href=\'/result'\"><i>Back to home</i></a></form></body></html>"
    return va
  end
  
  ds=con.dml_select_name(rollno)
  ds.each do |l|
    k= k +"<tr align=\"left\"><th>Name : </th><td>"+ l.join() + "</td><tr>"
  end
  
  ds=con.dml_select_rollno(rollno)
  ds.each do |l|
    k= k +"<tr align=\"left\"><th>Roll No : </th><td>"+ l.join() + "</td><tr>"
  end
  
  ds=con.dml_select_dob(rollno)
  ds.each do |l|
    k= k +"<tr align=\"left\"><th>DOB : </th><td>"+ l.join() + "</td><tr>"
  end  
  k+="</table><br><table border=\"1\" width=\"500\"><tr><th>Subject</th><th>Title</th><th>Mark</th></tr>"

  
  ds=con.dml_select_sub1(rollno)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  
  ds=con.dml_select_sub2(rollno)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
 
  ds=con.dml_select_sub3(rollno)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  
  ds=con.dml_select_sub4(rollno)
  ds.each do |l|
    k= k +"<tr><th>Major </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  
  ds=con.dml_select_sub5(rollno)
  ds.each do |l|
    k= k +"<tr><th>Allied </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  
  ds=con.dml_select_sub6(rollno)
  ds.each do |l|
    k= k +"<tr><th>Allied </th><td>"+ l.join("</td><td>") + "</td><tr>"
  end
  
  ds=con.dml_select_total(rollno)
  ds.each do |l|
    k= k +"<tr><th>Total </th><td></td><td>"+ l.join("</td></tr>")
  end
  
  ds=con.dml_select_avg(rollno)
  ds.each do |l|
    k= k +"<tr><th>Average </th><td></td><td>"+ l.join("</td></tr>")
  end
  k+="</table></form><br><a href=\'/result'\"><i>Back to home</i></a></form><p><ul>
<li>This is a computer gerenated result and hence are prone to system error.</li>
<li>This web site may not gaureenty the precision of subject marks.</li>
</ul></p></center></body></html>"  
  return k
end

get '/test' do
 con=Connection.new
 k ="<html><head><title>University of Madras Result 2013 page</title></head><center><body><img src=\"/home/chandrasekar/Chan_Programs/mm.png\"><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><form><br><h3>University of Madras Results 2013 (PG) - MCA (PG)</h3><br><br>"
 k+="<table border=\"1\" bgcolor=\"#F0F0F0\"  size=\"1000\">"
a=['Rollno','Name','DOB','Major','Mark','Major','Mark','Major','Mark','Major','Mark','Allied','Mark','Allied','Mark','Total','Average']  
  ar=Array.new
  ds=Array.new
  ac=Array.new
  ac=""
  m=0
  i=0
  rollno=params[:rollno]
  ds=con.dml_select(rollno)
  ds.each_with_object([]) {|j|
   ar[i]=j.to_s
   i+=1}
=begin
  ds.each do |n|
    ar=n.join(",")
    ##ar=ds.fetch_by_id(rollno)
    ##ar=ar.to_s
    i+=1
  end
=end
  if ds!="nil"
    while m <= ar.length-1
      #k= k + "<tr><td>" + a[m].to_s + "</td><td>" + ar[m].to_s + "</td></tr>"
      ar=ar[m].to_s
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
