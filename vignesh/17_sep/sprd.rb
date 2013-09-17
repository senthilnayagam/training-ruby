require 'rubygems'
require 'spreadsheet'

Spreadsheet.client_encoding='UTF-8'


 
 book=Spreadsheet::Workbook.new

 sheet = book.create_worksheet 
 
 sheet.row(0).push'SL.NO','NAME','DEPT','LOCATION'
 sheet.row(1).push'1','SEKAR','CSE','CHENNAI'
 sheet.row(2).push'2','RAJI','CSE','CHENNAI'
 sheet.row(3).push'3','SHREE','CSE','CHENNAI' 
 sheet.row(4).push'4','VIGNESH','CSE','CHENNAI'
 sheet.row(5).push'5','RAJ','CSE','CHENNAI'


 

 book.write('/home/anand/Documents/list.xls')
