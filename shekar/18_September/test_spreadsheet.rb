#Ruby code to implement task2.

require 'rubygems'
require 'open-uri'
require 'pismo'
require 'spreadsheet'

Spreadsheet.client_encoding='UTF-8'
book=Spreadsheet::Workbook.new
sheet = book.create_worksheet
a=Array.new
b=Array.new
c=Array.new
a=["hello","chandra","how are you.."]

sheet.row(0).push 'Link Text','Link Url','Description'
for i in 1..5
sheet.row(i).push a[0],a[1],a[2]
book.write('/home/chandrasekar/training-ruby/shekar/18_September/website_link.xls')
end

