#Ruby script to create a new picture having color opposite to that of the given picture.

require 'rubygems'
require 'RMagick'
include Magick

puts "Input the picture file name (within the same directory): "    #for reading the picture file name at run time(within the same directory).
picture_name=gets.chomp

if !(picture_name.to_s.include?(".gif") or picture_name.to_s.include?(".png") or picture_name.to_s.include?(".jpg"))
  abort("Invalid file format.\nInput files having extension .gif,.png,.jpg or .jpeg")	#for verifying the file type
end

image_size = ImageList.new(picture_name)	#for fetching the image size - width and height.

tmp_image = image_size.quantize(number_colors = 256)		#for creating a temporary image object.

column_size=image_size.columns		#for column size of image.
row_size=image_size.rows		#for row size of image.

new_image = Image.new(column_size, row_size)	#for creating a new image object that will have the resultant image.

for x in 0..column_size
    for y in 0..row_size
        pixel = tmp_image.pixel_color(x, y)
	red_pixel=65535-pixel.red	#for creating opposite color
	green_pixel=65535-pixel.green
	blue_pixel=65535-pixel.blue
	new_pixel =Pixel.new(red_pixel, green_pixel, blue_pixel,0)  #for creating a new pixel object based on previous colors.
	new_image.pixel_color(x, y, new_pixel)	#for adding the new color into the new image.
    end
end
new_image.write("#{picture_name}_new1.jpg")	#for saving the new image file.
#new_image.display

