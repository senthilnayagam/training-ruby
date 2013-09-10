require 'mysql'
con = Mysql.new 'localhost', 'root', 'root'
qry="update Employee set Ename='#{name}',age=#{age.to_i},grade='#{grade}')"
db1.query(qry)
puts "#{name} record inserted"

