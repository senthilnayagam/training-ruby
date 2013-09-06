require 'mysql'
con = Mysql.new 'localhost', 'root', 'root', 'college'
rs = con.query("SELECT * FROM Employee")
n_rows = rs.num_rows
puts "There are #{n_rows} rows in the result set"
n_rows.times do
puts rs.fetch_row.join("\s")
end
con.close if con
