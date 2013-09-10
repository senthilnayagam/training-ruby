require 'mysql'

begin
con=Mysql.new 'root','root','college'
res=con.query("select * from student")
res.each do |row|
puts row
end
end

