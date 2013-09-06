#Program to connect to database and perform basic DML operation.



require 'mysql'
begin

db=Mysql.new('localhost','root','root','college')
=begin
db.query("create table testfile(name varchar(20),age integer,grade char(1))")
db.query("insert into testfile values('Ajay',21,'A')")
db.query("insert into testfile values('Aswin',21,'A')")
db.query("insert into testfile values('Amit',21,'C')")
db.query("insert into testfile values('Arun',21,'C')")
db.query("insert into testfile values('Anand',21,'B')")
=end
puts " Student Details"
print " Student Name : "
name=gets
print "Age : "
age=gets.to_i
print "Branch :"
branch=gets
ds=db.query("Select * from testfile order by grade asc")
ds.each do |i|
puts i.join(" ")
end
end
