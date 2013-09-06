require 'mysql'
con = Mysql.new 'localhost', 'root', 'root', 'college'
rs = con.query("SELECT * FROM Employee")
rs.each do |row|
puts row.join("\s")
end
