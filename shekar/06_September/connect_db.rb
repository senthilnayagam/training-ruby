#Program to connect to database and perform basic DML operation.
require 'mysql'
begin

db1=Mysql.new('localhost','root','root','college')
#db1.query("create table test_student(sname varchar(25),age integer,grade char(1))")
ds=db1.query("insert into test_student values('Chandra sekaran R',23,'A')")
end

