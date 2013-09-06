#Program to connect to database and perform basic DML operation.

require 'mysql'
begin

db=Mysql.new('localhost','root','root','college')

db.query("delete from testfile where name like 'Ajay'")

ds=db.query("Select * from testfile order by grade asc")
ds.each do |i|
puts i.join(" ")
end


end
