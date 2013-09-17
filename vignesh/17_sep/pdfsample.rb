require 'rubygems'
require "prawn"

s="This is a sample Pdf Document."
Prawn::Document.generate("simple.pdf") do
  text "Hello World!"+"\n"+s
end
