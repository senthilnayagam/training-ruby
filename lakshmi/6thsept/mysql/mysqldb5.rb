require 'mysql'
con = Mysql.new 'localhost', 'root', 'root', 'college'
rollno = $stdin.read

qry="SELECT * FROM student where rollno="+rollno.to_s;
rs = con.query(qry)
rs.each do |row|
puts row.join("\s")
end
