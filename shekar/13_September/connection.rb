#Class to hold the database connection to MySql
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Connection
  def initialize
    db1=Mysql.new('localhost','root','root','college')
  end
  def dml_select    
    qry="select * from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
end
