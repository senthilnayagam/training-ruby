#These are the gems which require for running this program
require 'rubygems'
require 'pismo'
require 'open-uri'
require 'spreadsheet'

begin
Spreadsheet.client_encoding='UTF-8'
book=Spreadsheet::Workbook.new

#Here by we are creating a Spreadsheet
sheet = book.create_worksheet
#Pushing the elements at first row
sheet.row(0).push'LINK','URL','DESCRIPTION'

#Declaring Array element
maincontent=Array.new

#Assingning the range of values
from=2
to=4

#Homepage &start=0
homepage=0
#Initialise count value
count=1
#Here the starting range is mentioned
i=from
#Here we are searching for the word "ruby"
while i <= to
if i==1
url='http://www.google.co.in/search?q=ruby'
k=11
elsif i>1
value=(i-1)*10
k=10
url='http://www.google.co.in/search?q=ruby'+'&start='+homepage.to_s
end
doc = Pismo::Document.new(url)
puts "These are the following elements displayed in the webpage : "
print "Body     : "+ doc.body.to_s + "\n"
#print "Sentences: "+ doc.sentences.to_s + "\n"
content=doc.body.to_s
#Split by using *
maincontent=content.split('*',11)

j=1
while j <= k
s=maincontent[j]
l=s.lines.map(&:chomp)
print "LINK : " + l[1].to_s + "\n"
print "URL : " + l[2].to_s + "\n"
print "DESCRIPTION : " + l[3].to_s + "\n"
#Here we push the LINK URL DESCRIPTION
sheet.row(count).push l[1],l[2],l[3] 
#This command use to write the data's into spreadsheet
book.write('/home/anand/Documents/ka.xls')
count=count+1
j=j+1
end
i=i+1
end
end
