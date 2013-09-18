#Class to hold the database connection to MySql
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Employee
 @@con
 def initialize()
    @@con=Mysql.new('localhost','root','root','Employee')    
 end
 def select(id)
   con1=Mysql.new('localhost','root','root','Employee')
   qry="select * from employee where id=" + id.to_s
   ds=con1.query(qry)
   return ds
 end
 def insert(eid,name,dob,age,salary)
   qry="insert into employee values #{id},'#{name}','#{age}','#{salary}'"
   @@con.query(qry)
 end
 def delete(id)
   qry="delete from employee where id=#{id}"
   @@con.query(qry)
 end
 def update(id,name,desig,grade,qcc_team,qcc_expo)
   qry="update employee set salary= '#{salary}' where id=#{id}"
   @@con.query(qry)
 end
end

