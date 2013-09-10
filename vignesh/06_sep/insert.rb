#Program to connect to database and perform basic DML operation.

require 'mysql'
begin

db=Mysql.new('localhost','root','root','college')

db.query("insert into testfile values('Ajay',21,'A')")
db.query("insert into testfile values('Aswin',21,'A')")
db.query("insert into testfile values('Amit',21,'C')")
db.query("insert into testfile values('Arun',21,'C')")
db.query("insert into testfile values('Anand',21,'B')")


end
