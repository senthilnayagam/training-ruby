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
=end

db1.query("update test_student set grade='B' where sname like 'Ram%'")
end
