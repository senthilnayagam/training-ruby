#Program to print duplicat elements in an array

#a=Array.new(10)
count=0
puts "Input array elements : "
#for i in 0..9
#a[i]=gets
#end
a=[1,2,3,4,2,5,2,1,8,3,4]
for i in 0..9
 count=0
 for j in 0..9
   if a[i]==a[j] and a[i] != 0
    count = count + 1
   end
  end
 if count > 1
    print "\n #{a[i]} has occured #{count} times. \n"
    a[i]=0
 end
end


