require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'uri'

URL = 'https://www.google.co.in/'
def make_absolute( href, root )
  URI.parse(root).merge(URI.parse(href)).to_s
end

Nokogiri::HTML(open(URL)).xpath("//img/@src").each do |src|
  uri = make_absolute(src,URL)
  File.open(File.basename(uri),'wb'){ |f| f.write(open(uri).read) }
end
