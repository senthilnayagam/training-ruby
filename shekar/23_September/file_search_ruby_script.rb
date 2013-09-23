#Ruby script to list the files within a given directory having the given pattern match.
require "rubygems"
require 'fileutils'
require 'tempfile'

#path="/home/chandrasekar/Chan_Programs"	test data.
#pattern="puts"
begin
	puts "Input the path : "
	path=gets.chomp
        if path.empty? or path=='' or path=='\n'	#validate the input path.
          raise 'Invalid path name.'
        end

	puts "Input the pattern : "
	pattern=gets.chomp
	if pattern.empty? or pattern=='' or pattern=='\n'	#validate the input pattern.
          raise 'Invalid pattern.'
        end

	puts "----------------------------------------------------------------------"
	file_count=Dir.glob(File.join(path, '**', '*')).select { |file| File.file?(file) }.count.to_i
	count=0
	Dir.glob("#{path}/**/*") do |my_text_file| 
 	  if File.file?(my_text_file)
    		file = File.read(my_text_file)
    		file.each_line do |line|
       		  if line.match(pattern)	#find the string match with the file content.
         	    puts File.basename(my_text_file)
         	    break
       		  else
         	    count+=1
       		  end  
     	        end
  	  end 
	end
	if count > file_count	#if no such file exists.
 	  puts "No such file exists in the keyword #{pattern}."
	end
	puts "---------------------------------------------------------------------"
rescue Exception => e  
  puts e.message  
ensure
  puts "Program completed."
end  
