class Connection
def connect
con = Mysql.new('localhost', 'root', 'root', 'test1')
qry="SELECT * FROM student where rollno=2"
rs= con.query(qry)
result =' '
n_rows = rs.num_rows
n_rows.times do

result += rs.fetch_row.join(" ")


end
result
end
end


