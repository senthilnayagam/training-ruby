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
	     	<tr>
		<th>RollNo</th>	
		<th>Name</th>
		<th>DOB</th>
		<th>Sub1</th>
		<th>Marks1</th>
		<th>Sub2</th>
		<th>Marks2</th>
		<th>sub3</th>
		<th>Marks3</th>
		<th>Sub4</th>
		<th>Marks4</th>
		<th>Sub5</th>
		<th>Marks5</th>
		<th>Sub6</th>	
		<th>Marks6</th>
		<th>Total</th>
		<th>Avg</th>
		<th>University</th>
		<th>Result</th>
	   	</tr> "
  
  res.each do |row|
      result += "<tr><td>" + row.join("</td><td>") + "</td></tr></table></html>"
  end
  else
     result = "<a href=\"/result\">Enter valid Roll Number</a>"

  end
#<a href=\"/result\">Go back</a>
  s= "<input type=\"button\" value=\"Back\" onclick=\"goBack()\" align=\"center\"><div id=\"footer\"></div>"
result + s
end







get '/result' do
str= "<html><head>
<style>
  	#header {
	    margin-top:0px;
	    height:80px;
	    background:#D3D3D3;
	    margin-bottom:50px;
  	}
	#footer {
	    height: 30px;
	    background:white;
	    position: absolute;
            margin-bottom: 0;
  	}
</style></head>

<body bgcolor=\"#2F4F4F\" align=\"center\"> 

<div id=\"header\">
<h1>JNTU RESULTS</h1><h4>(JAWAHARLAL NEHRU TECHNOLOGICAL UNIVERSITY)</h4>
</div>

<marquee style=\"color:#DCDCDC;background-color:#D2691E\">B.E and B.Tech Results are Out. Check your Result here...</marquee>
<h3 align=\"center\">HALLTICKET NO<h3>

<form action=\"/rollnum\" name=\"result\">
<input type=\"text\" align=\"center\" name=\"rollno\">
<input type=\"submit\" value=\"Result\">
</form>

<div id=\"footer\"></div>
</body></html>"

end

