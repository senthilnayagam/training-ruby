#Print 1 to 100 without using loops
class MyClass 
	@@count=0
	def fun1
	  if @@count < 100
	     @@count+=1
	     print "#{@@count.to_s} "
	     fun1
	  end
	end
end

obj=MyClass.new
obj.fun1
#for i in 1..100
#	obj.fun1
#end

