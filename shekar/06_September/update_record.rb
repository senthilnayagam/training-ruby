#Program to perform update operation.
require 'mysql'

begin

db1=Mysql.new('localhost','root','root','college')
=begin
db1.query("create table test_student(sname varchar(25),age integer,grade char(1))")
db1.query("insert into test_student values('Ganga',23,'B')")
db1.query("insert into test_student values('Raman',22,'A')")
db1.query("insert into test_student values('Nataraj',21,'C')")
db1.query("insert into test_student values('Ram kumar',22,'C')")
db1.query("insert into test_student values('Raghavan',22,'B')")
db1.query("update test_student set grade='B' where sname like 'Ram%'")
=end
puts "Input student data to be updated : "
print "Name  : "
name=gets
print "Age   : "
age=gets.to_i
print "Grade : "
grade=gets

qry="update test_student set sname='#{name}',age=#{age.to_i},grade='#{grade}')"
db1.query(qry)
puts "#{name} record updated"

end
