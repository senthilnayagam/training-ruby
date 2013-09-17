#to read content of spreadsheet
require 'rubygems'
require 'spreadsheet'    
Spreadsheet.open('/home/user/raj/list.xls') do |book|
  book.worksheet('Sheet1').each do |row|
    break if row[0].nil?
    puts row.join(',')
  end
end
