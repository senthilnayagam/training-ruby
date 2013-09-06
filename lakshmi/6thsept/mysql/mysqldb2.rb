require 'mysql'
con = Mysql.new 'localhost', 'root', 'root', 'college'
con.query("CREATE TABLE
        Employee(Eid INT PRIMARY KEY AUTO_INCREMENT, Name VARCHAR(25),Esalary integer)")
 con.close if con


