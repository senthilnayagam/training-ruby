require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
class ABC
 def initialize
   @a=10
   @b=20
 end
 def assign_values(a,b)
   @a=a
   @b=b
 end
 def print_values()
   return "a is : "+@a.to_s+"b is : "+@b.to_s
 end
end
=begin
obj=ABC.new
puts "Values from constructor"
puts obj.print_values()
obj.assign_values(100,100)
puts "Values from methods"
puts obj.print_values()
=end
