#Code to insert data into excel sheet dynamically.

require 'rubygems'
require 'spreadsheet'

Spreadsheet.client_encoding='UTF-8'
book=Spreadsheet::Workbook.new
sheet = book.create_worksheet
sheet.row(0).push 'Emp ID','Name','Section','Grade'

i=1
empid=Array.new
name=Array.new
section=Array.new
grade=Array.new

print "Input the number of records : " 
n=gets.to_i
puts "Input employee data : "
while n > 0
print "Emp Id	: "
empid[i]=gets.to_i
print "Name	: "
name[i]=gets.to_s
print "Section	: "
section[i]=gets.to_s
print "Grade	: "
grade[i]=gets.to_s
 
n=n-1
i=i+1
end
i=0
while i < empid.length
 sheet.row(i+1).push empid[i] #,name[i],section[i],grade[i]
 sheet.row(i+1).push name[i]
 i+=1
end 

book.write('/home/chandrasekar/training-ruby/shekar/17_September/emp_data.xls')

puts "Spread sheet created."
