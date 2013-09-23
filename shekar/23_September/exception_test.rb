#sample exception test

begin 
=begin 
  a=gets.to_i
  if a < 0
   raise 'Negative number exception.' 
  else
   puts "The value is : "+a.to_s
  end
=end
  puts "Input a string : "
  str=gets.chomp
  if str.empty? #or str.size == 0  or str=='' or str=='\n'	#or str.blank?
      raise 'Invalid string.'
  end
rescue Exception => e  
  puts e.message  
  puts e.backtrace.inspect 
  a=0
  retry
ensure
 puts "Program completed." 
end  
