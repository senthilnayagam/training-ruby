#Code to insert data into excel sheet.

require 'rubygems'
require 'spreadsheet'

Spreadsheet.client_encoding='UTF-8'
 
book=Spreadsheet::Workbook.new

sheet = book.create_worksheet
 
 sheet.row(0).push 'Emp ID','Name','Section','Grade'
 sheet.row(1).push '1','Hari dass','Al','A'
 sheet.row(2).push '2','Jai','Al','A'
 sheet.row(3).push '3','Raj kamal','Cu','A'
 sheet.row(4).push '4','Kamal nath','Cu','B'
 sheet.row(5).push '5','Parthiban','Fe','A'
 sheet.row(6).push '6','Kalifulla','Fe','B'

book.write('/home/chandrasekar/training-ruby/shekar/17_September/emp_data.xls')
puts "Spread sheet created."
