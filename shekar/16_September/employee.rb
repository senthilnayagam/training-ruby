#Class to hold the database connection to MySql
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Employee
 @@cons
 def initialize()
    @@cons=Mysql.new('localhost','root','root','Employee')    
 end
 def select_all()
   con1=Mysql.new('localhost','root','root','Employee')
   qry="select * from employee"
   ds=con1.query(qry)
   return ds
 end
 def select(id)
   con1=Mysql.new('localhost','root','root','Employee')
   qry="select * from employee where id=" + id.to_s
   ds=con1.query(qry)
   return ds
 end
 def insert(id,name,desig,grade,qcc_team,qcc_expo)
   con=Mysql.new('localhost','root','root','Employee')
   qry="insert into employee values(#{id},'#{name}','#{desig}','#{grade}','#{qcc_team}','#{qcc_expo}')"
   con.query(qry)
 end
 def delete(id)
   con=Mysql.new('localhost','root','root','Employee')
   qry="delete from employee where id=#{id}"
   con.query(qry)
 end
 def update(id,name,desig,grade,qcc_team,qcc_expo)
   con=Mysql.new('localhost','root','root','Employee')
   qry="update employee set name='#{name}',desig='#{desig}',grade='#{grade}',qcc_team='#{qcc_team}',qcc_expo='#{qcc_expo}' where id=#{id}"
   con.query(qry)
 end
end

