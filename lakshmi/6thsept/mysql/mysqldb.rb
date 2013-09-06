require 'mysql'
con = Mysql.new 'localhost', 'root', 'root'
    puts con.get_server_info
    rs = con.query 'SELECT VERSION()'
    puts rs.fetch_row    
con.close if con
