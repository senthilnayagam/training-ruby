require 'mysql'
require 'rubygems'
require 'sinatra'
class Dbclass
def db(roll_no)
	   db_conn = Mysql.new('localhost', 'root', 'root', 'Training')
   a = db_conn.query("select * from student where roll_no = #{roll_no.to_s}")
	 a
	end
end
