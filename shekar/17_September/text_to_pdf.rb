#Ruby code to convert a text document into pdf.

require 'rubygems'
require "prawn"

msg="This is a sample pdf document."
Prawn::Document.generate("sample.pdf") do
  text "Hello World!"+"\n"+msg
end

