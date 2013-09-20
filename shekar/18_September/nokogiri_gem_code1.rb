#Ruby code to implement nokogiri gem.
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.google.com/search?q=constructors'))

# Search for nodes by css
puts "\nSearch for nodes by css : "
doc.css('h3.r a').each do |link|
  print link.content + "-"
end

# Search for nodes by xpath
puts "\nSearch for nodes by xpath : "
doc.xpath('//h3/a').each do |link|
  print link.content + "-"
end

# Or mix and match
puts "\nSearch for nodes by possible match : "
doc.search('h3.r a.l', '//h3/a').each do |link|
  print link.content + "-"
end
