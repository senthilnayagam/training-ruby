require 'mysql'

begin
    con = Mysql.new 'localhost', 'root', 'root'

    con.list_dbs.each do |db|
        puts db
    end
end
