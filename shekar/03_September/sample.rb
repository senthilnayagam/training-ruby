#a=[1,2,3,4,5,6,7,8,9,10]
puts "Input array size : "
size=gets
a=Array.new(size)
puts "Input array elements : "
for i in 0..size-1
a[i]=gets
end
for i in 0..size-1
puts a[i]
end
