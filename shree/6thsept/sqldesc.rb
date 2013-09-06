require 'mysql'

begin
    
    con = Mysql.new 'localhost', 'root', 'root', 'college'
   
  res=con.query("desc employee");
res.each do |row|
    puts row.join("\s")
end

end   
