require 'mysql'

begin
    
    con = Mysql.new 'localhost', 'root', 'root', 'college'
   
  con.query("CREATE TABLE emp2( empno INT PRIMARY KEY,Name VARCHAR(25))")
    con.query("INSERT INTO emp2 VALUES(1,'jack')")
    con.query("INSERT INTO emp2 VALUES(2,'john')")

    res=con.query("select * from emp")
    res.each do |row|
    puts row.join("\s")
end
end    
