require 'mysql'

begin
    
    con = Mysql.new 'localhost', 'root', 'root', 'college'
   
  
    con.query("INSERT INTO employee VALUES(3,'leo','team leader')")
    con.query("INSERT INTO employee VALUES(4,'rosy','project manager')")

    res=con.query("select * from employee")
    res.each do |row|
    puts row.join("\s")
end
end    
