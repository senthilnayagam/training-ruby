require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Student_Result

  def result_design1(k)
    k+="<html><head><title>University of Madras Result 2013 page</title></head><center><body><img src=\"/home/chandrasekar/Chan_Programs/mm.png\"><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><form><br><h3>University of Madras Results 2013 (PG) - MCA (PG)</h3><br><br>"
    #k+="<table border=\"1\" bgcolor=\"#F0F0F0\"  size=\"1000\">"
    return k
  end

  def result_design2(k)
  k+="</table><center><br><br><a href=\'/result'\"><i>Back to home</i></a></form><p><ul>
<li>This is a computer gerenated result and hence are prone to system error.</li>
<li>This web site may not gaureenty the precision of subject marks.</li>
</ul></p></body></html>"
  return k
  end

  def result_design_home(navigate_to)
  s="<html><head><title>University of Madras Result 2013 page</title></head>
<body bgcolor=\"#F0F0F0\"><img src=\'/home/chandrasekar/Chan_Programs/mm.png\'></img><marquee bgcolor=\"yellow\"><font color=red><b>University of Madras PG Results 2013</b></font></marquee><center><br><h3>University of Madras Results 2013 (PG) - MCA</h3><br>
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
  return s
  end

  def result_calculate(k)
  a=['Rollno','Name','DOB','Major','Mark','Major','Mark','Major','Mark','Major','Mark','Allied','Mark','Allied','Mark','Total','Average']  
  #rollno=params[:rollno]
  db1=Mysql.new('localhost','root','root','college')
  qry="select * from student where rollno=" + rollno.to_s
  ds=db1.query(qry)
  
    ds.each do |ar|
      k= k + "<tr><td>" + ar.join("</td><td>") + "</td></tr>"
    end  
  k+="</table><center><br><br><a href=\'/result'\"><i>Back to home</i></a></form><p><ul>
<li>This is a computer gerenated result and hence are prone to system error.</li>
<li>This web site may not gaureenty the precision of subject marks.</li>
</ul></p></body></html>"
  return k
  end

end

class Result < Student_Result
  @k1
  @rollno
  def home_page
    get '/result' do
      @k1=result_design_home()
      return @k1
    end
  end
  def input_rollno
    
  end
end
