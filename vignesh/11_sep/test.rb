require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'


get '/hi' do
  "Hello World!"
end


get '/time' do
  Time.now.to_s
end

get '/hello' do
  
name=params[:name]


"Hello "+ name.to_s + " :)"
end


get'/studbt' do




db =Mysql.new 'localhost' , 'root' , 'root' , 'college' 

rollno = params[:rollno]

result = "Result :" + "<br>"

result += "<table border=1 bgcolor=skyblue size=1000>
<tr>

<th>Roll No</th>
<th>Name</th>
<th>Date of Birth</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Subject</th>
<th>Mark</th>
<th>Total</th>
<th>Average</th>
<th>University</th>
<th>Year</th>

</tr>"
 

qry="SELECT * FROM student where rollno="+rollno.to_s;

ds=db.query(qry)


ds.each do |row|
result += "<tr><td>"+ row.join("</td><td>") + "</td></tr>"
end
result += "</table>"
result
end


