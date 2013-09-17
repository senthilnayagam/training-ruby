require 'rubygems'
require 'spreadsheet'
require 'mysql'

Spreadsheet.client_encoding='UTF-8'

class DataEntry
def storedata
con=Mysql.new 'localhost','root','root','college'
qry="select * from test"
res=con.query(qry)

=begin
res.each do |row|
puts row.join("\n")
end
=end

book=Spreadsheet::Workbook.new
sheet = book.create_worksheet 
sheet.row(0).push 'EMP_ID','NAME','DOB','AGE','SALARY'
i=1
res.each do |row|
row.join(/(\s+)/)
sheet.row(i).push row[0],row[1],row[2],row[3],row[4]
i=i+1
end

#sheet.row(1).push res[0],res[1],res[2],res[3],res[4]
book.write('/home/user/training-ruby/raj/17thsep/records.xls')
end
end

obj=DataEntry.new
obj.storedata
