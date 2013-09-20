#Code to convert html to pdf.

require 'rubygems'
require 'pdfkit'

kit = PDFKit.new("http://google.com")
kit.to_pdf
