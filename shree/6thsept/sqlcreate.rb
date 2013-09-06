require 'mysql'

begin
    
    con = Mysql.new 'localhost', 'root', 'root', 'college'
   
  con.query("CREATE TABLE employee( empno INT PRIMARY KEY,Name VARCHAR(25),designation VARCHAR(25))")
end
