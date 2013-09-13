require 'mysql'
con = Mysql.new 'localhost', 'root', 'root', 'test1'
rs = con.query("SELECT * FROM student")
n_rows = rs.num_rows
puts "There are #{n_rows} rows in the result set"
n_rows.times do
puts rs.fetch_row.first[0]
end
con.close if con
