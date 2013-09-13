#Class to hold the database connection to MySql
require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Connection
=begin
  def initialize
    db1=Mysql.new('localhost','root','root','college')
  end
=end
  def dml_select(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select * from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select1()
    arr=Array.new
    db1=Mysql.new('localhost','root','root','college')    
    ds=db1.fetch("select * from student where rollno= ?", '1')
    ds.each do |row|
      arr=row[:name]
    end
    return arr
  end
end
