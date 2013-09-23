require 'rubygems'
require 'RMagick'
include Magick

	#Loading the image into Imagelist object
img = ImageList.new("Vijay-Stills.jpg")
img_size = img.quantize(number_colors = 256)
		#Creating the new image with same given image size
img_new = Image.new(img.columns, img.rows)
		
		#For reading each rows and coloumns 
	(0..img.columns).each do |x|
	(0..img.rows).each do |y|
	pixel = img_size.pixel_color(x, y)
		#Getting the new pixel values
	red=(255-pixel.red)
	green=(255-pixel.green)
	blue=(255-pixel.blue)
		#Printing the new pixel values
	puts red.to_s + " " + green.to_s + " " + blue.to_s
	mod_pix =Pixel.new(red, green, blue,0)
	img_new.pixel_color x, y, mod_pix
	end
	end

	#For displaying the new image
img_new.display
