a=Array.new(10)
c=0
puts "Input array size : "
size=gets
puts "Input array elements : "
for i in 0..size.to_i-1
a[i]=gets
end
puts "\n Input the element to be found : "
num=gets
for i in 0..size.to_i-1
if a[i].to_i==num.to_i
print "\n The element " + num.to_s + " is at position " + (i+1).to_s
else
c+=1
end
end
if c>size.to_i
puts "No such elemet exists."
end

