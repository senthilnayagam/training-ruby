require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/rollnum' do
  con=Mysql.new 'localhost','root','root','college'
  rollno=params[:rollno]
  query="select * from student where rno=" + rollno.to_s
  res=con.query(query)
 end 
  
  
  








get '/result' do
str= "<html><head>

</head>
<link rel=\"stylesheet\" type=\"text/css\" href=\"/styles.css\">
</head>

<body bgcolor=\"#2F4F4F\" align=\"center\"> 

<div id=\"header\">
<h1>JNTU RESULTS</h1><h4>(JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY)</h4>
</div>

<marquee style=\"color:#DCDCDC;background-color:#D2691E\">B.E and B.Tech Results are Out. Check your Result here...</marquee>
<h3 align=\"center\" style=\"color:#DCDCDC\">HALLTICKET NO<h3>

<form action=\"/rollnum\" name=\"result\">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type=\"text\" align=\"center\" name=\"rollno\">
<input type=\"submit\" value=\"Result\">
</form>

<div id=\"footer\"></div>
</body></html>"

end

