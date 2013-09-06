require 'mysql'
con = Mysql.new 'localhost', 'root', 'root', 'college'
    con.query("INSERT INTO Employee(Eid,Name,Esalary) VALUES(101,'Rajalakshmi',10000)")
    con.query("INSERT INTO Employee(Eid,Name,Esalary) VALUES(102,'Anu',10000)")
    con.query("INSERT INTO Employee(Eid,Name,Esalary) VALUES(103,'Ambika',12000)")
    con.query("INSERT INTO Employee(Eid,Name,Esalary) VALUES(104,'Lavanya',10000)")
    con.query("INSERT INTO Employee(Eid,Name,Esalary) VALUES(105,'Shree',10000)")
 con.close if con   
    
