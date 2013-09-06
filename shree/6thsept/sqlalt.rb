require 'mysql'

begin
    
    con = Mysql.new 'localhost', 'root', 'root', 'college'
   
  
    con.query("update employee set designation='HR' where empno=3")

    res=con.query("select * from employee")
    res.each do |row|
    puts row.join("\s")
end

end    
