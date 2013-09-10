#Program to connect to database and perform basic DML operation.



require 'mysql'
begin

db=Mysql.new('localhost','root','root','college')
=begin
#db.query("create table testfile(name varchar(20),age integer,grade char(1))")
=end
#db.query("create table testfile(name varchar(20),age integer,grade char(1))")

db.query("update testfile set grade='B' where name='Ajay'")
puts "record updated"
end
