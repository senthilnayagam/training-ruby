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
  def dml_select_name(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select name from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_rollno(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select rollno from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_dob(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select dob from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_sub1(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select subject1,mark1 from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_sub2(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select subject2,mark2 from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_sub3(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select subject3,mark3 from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_sub4(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select subject4,mark4 from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_sub5(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select subject5,mark5 from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_sub6(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select subject6,mark6 from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_total(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select total from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
  def dml_select_avg(rollno)
    db1=Mysql.new('localhost','root','root','college')    
    qry="select avg from student where rollno=" + rollno.to_s
    ds=db1.query(qry)
    return ds
  end
end
