require 'mysql'
con = Mysql.new 'localhost', 'root', 'root'
#con.query("create database test5");
rs=con.query("show databases;");
rs.each do |row|
puts row
end
