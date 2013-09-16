require 'mysql'
class Dbclass
def db(roll_no)
	   db_conn = Mysql.new('localhost', 'root', 'root', 'Training')
   a = db_conn.query("select * from student where roll_no = #{roll_no}")
	 a
	end
end
