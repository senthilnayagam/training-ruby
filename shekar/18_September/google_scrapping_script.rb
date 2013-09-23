#Ruby code to implement Google scraping - by inputting the query string and page numbers range and outputting it to a spreadsheet.

require 'rubygems'
require 'open-uri'
require 'pismo'
require 'spreadsheet'

class Google_Scarpping_Script
 #Method to get the input from user at run time.
 def input_data
   print "Input query string : "
   @query_string=gets.chomp
   print "Input page number - Range 1 :"
   @range1=gets.to_i
   print "Input page number - Range 2 :"
   @range2=gets.to_i
 end
 #Method to fetch the webpage contents within the given range of pages and the exact query string and push those data into a spreadsheet.
 def process_data()
   	Spreadsheet.client_encoding='UTF-8'
	book=Spreadsheet::Workbook.new
	sheet = book.create_worksheet
	sheet.row(0).push 'Link Text','Link Url','Description' #For including headers to the spreadsheet.

	main_content=Array.new
	s=''
	s1=''
	value=0
	row_count=1
	iterate=@range1.to_i
	while iterate <= @range2.to_i
  		if iterate==1
   			url='http://www.google.co.in/search?q='+@query_string.to_s
   			link_count=11
  		elsif iterate>1
   			value=(iterate-1)*10
   			link_count=10
   			url='http://www.google.co.in/search?q='+@query_string.to_s+'&start='+value.to_s
  		end
  		doc = Pismo::Document.new(url)
  		content=doc.body.to_s
  		main_content=content.split('*',11)
  		tmp=1
  		while tmp <= link_count
    			s=main_content[tmp]
    			s1=s.lines.map(&:chomp) #s1=s.split(/[\n]+/)
    			#print "Link #{j} : " + s1[1].to_s + "\nUrl #{j}  : " + s1[2].to_s + "\nDesc #{j} : " + s1[3].to_s + "\n"
    			sheet.row(row_count).push s1[1].to_s,s1[2].to_s,s1[3].to_s
    			book.write('/home/chandrasekar/training-ruby/shekar/18_September/website_link.xls')
    			row_count+=1
    			tmp+=1
  		end
  		iterate+=1
	end
 end    	
end

   scrap=Google_Scarpping_Script.new
   scrap.input_data()	#calls the method to fetch data from user
   scrap.process_data()	#calls the method to fetch results and add them to the spreadsheet.
   puts "Spreadsheet created."

