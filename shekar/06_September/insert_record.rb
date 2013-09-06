#Program to perform insert operation.
require 'mysql'

begin

db1=Mysql.new('localhost','root','root','college')
=begin
db1.query("create table test_student(sname varchar(25),age integer,grade char(1))")

db1.query("delete from test_student")
db1.query("insert into test_student values('Ganga',23,'B')")
db1.query("insert into test_student values('Raman',22,'A')")
db1.query("insert into test_student values('Nataraj',21,'C')")
db1.query("insert into test_student values('Ram kumar',22,'C')")
db1.query("insert into test_student values('Raghavan',22,'B')")
=end
puts "Input student data : "
print "Name  : "
name=gets
print "Age   : "
age=gets.to_i
print "Grade : "
grade=gets

qry="insert into test_student values('#{name}',#{age.to_i},'#{grade}')"
puts "#{name} record inserted"
end

