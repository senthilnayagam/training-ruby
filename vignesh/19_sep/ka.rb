require 'tempfile'
require 'fileutils'

path='/home/anand/sample/'
find='ruby'


Dir.glob("#{path}/**/*") do |text|
if File.file?(text)
file = File.read(text)
file.each_line do |line|
if line.match(find)
 puts (text)
break
end  
end
end
end
