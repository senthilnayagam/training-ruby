require 'spreadsheet'
Spreadsheet.client_encoding='UTF-8'
book=Spreadsheet::Workbook.new
sheet1=book.create_worksheet
sheet2 = book.create_worksheet
 sheet1.row(0).push'name','designation','place'
 sheet1.row(1).push'x','jse','ch'
 sheet1.row(2).push'y','se','mum'
 sheet1.row(3).push'z','pm','ban'
 sheet1.row(4).push'dm','del'
 sheet1.row(4).insert 4,'a'
 sheet1.row(2).replace [ 'b','tl','hyd']
 book.write '/home/johnson/training-ruby/lakshmi/17sept/test.xls'


