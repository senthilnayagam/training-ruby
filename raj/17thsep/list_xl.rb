require 'rubygems'
require 'spreadsheet'

#Spreadsheet.client_encoding='UTF-8'

book=Spreadsheet::Workbook.new

sheet = book.create_worksheet 
 
 sheet.row(0).push'S.NO','NAME','DEPT','LOCATION'
 sheet.row(1).push'1','RAJENDRA','CSE','CHENNAI'
 sheet.row(2).push'2','RAJI','CSE','CHENNAI'
 sheet.row(3).push'3','SHREE','CSE','CHENNAI' 
 sheet.row(4).push'4','VIGNESH','CSE','CHENNAI'
 sheet.row(5).push'5','SEKHAR','CSE','CHENNAI'

 book.write('/home/user/raj/list.xls')
