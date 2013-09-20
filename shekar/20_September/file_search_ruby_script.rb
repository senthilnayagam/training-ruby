#Ruby code to implement task1.
require "rubygems"
require 'fileutils'
require 'tempfile'

path="/home/chandrasekar/Chan_Programs"
pattern="puts"
puts "-----------------------------"
file_count=Dir.glob(File.join(path, '**', '*')).select { |file| File.file?(file) }.count.to_i
count=0
Dir.glob("#{path}/**/*") do |my_text_file| 
 if File.file?(my_text_file)
    file = File.read(my_text_file)
    file.each_line do |line|
       if line.match(pattern)
         puts File.basename(my_text_file)
         break
       else
         count+=1
       end  
     end
  end 
end
if count > file_count
 puts "No such file exists in the keyword #{pattern}."
end
puts "-----------------------------"
