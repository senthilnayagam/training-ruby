require 'spreadsheet'
Spreadsheet.client_encoding = 'UTF-8'
book = Spreadsheet.open '/home/johnson/training-ruby/lakshmi/17sept/test.xls'

sheet2 = book.worksheet 0
sheet2.each do |row|


puts row; 
end




