require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

get '/rollnum' do
  con=Mysql.new 'localhost','root','root','college'
  rollno=params[:rollno]
  query="select * from student where rno=" + rollno.to_s
  res=con.query(query)

  if res
  
  result = "<htmnl><head><title>JNTU Results</title><script>
		function goBack(){
		   window.history.back()
  	        }</script>
		<link rel=\"stylesheet\" type=\"text/css\" href=\"style1.css\">
		<style>
  		#header {
		    margin-top:0px;
		    height:50px;
		    background:#00BFFF;
		    margin-bottom:50px;
  		}
		#footer {
		    height: 30px;
		    background:#708090;
		    position: absolute;
                    margin-bottom: 0;
  		}
		h1{
		  font:bold;
		  margin-top:30px;
		}
		marquee{
		color:#ADD8E6;
		}
		h4{ 
		color:#191970;
		align:center;
		}
		</style>
		
		</head>
		<body bgcolor=\"#2F4F4F\">
		<table border=1 style=\"background-color:#B0C4DE\">
		
		<div id=\"header\">
		<h1>JNTU RESULTS</h1><h4>(JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY)</h4>
		</div>
	     	"

arr1=['Roll no','Name','DOB']
arr=Array.new

  res.each do |row|
for i in 0..res.count
arr[i]=arr1[i]+ " : " + row[i] 

     # result += "<tr><td>" + row.join("</td><td>") + "</td></tr></table></html>"
  end
end
  else
     result = "<a href=\"/result\">Enter valid Roll Number</a>"

  end
#<a href=\"/result\">Go back</a>
  s= "<input type=\"button\" value=\"Back\" onclick=\"goBack()\" align=\"center\"><div id=\"footer\"></div>"
result + arr.to_s + s
end


