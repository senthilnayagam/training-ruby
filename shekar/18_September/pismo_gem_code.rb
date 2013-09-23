#Ruby code to implement pismo gem.

require 'rubygems'
require 'pismo'

#doc = Pismo::Document.new('https://www.paypal.com/in/webapps/mpp/home')
doc = Pismo::Document.new('https://www.google.co.in/search?q=constructors')
puts "The followings are some of the webpage elements : "
print "Title    : "+ doc.title.to_s + "\n"
print "Author   : "+ doc.author.to_s + "\n"
print "         : "+ doc.lede.to_s + "\n"
print "Keywords : "+ doc.keywords.to_s + "\n"
print "Sentences: "+ doc.sentences.to_s + "\n"
print "Body     : "+ doc.body.to_s + "\n"
#print "Body     : "+ doc.html_body.to_s + "\n"
print "Datetime : "+ doc.datetime.to_s + "\n"
