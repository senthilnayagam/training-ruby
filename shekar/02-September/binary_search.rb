#Binary search program
class Test 

def myfun  
  #a=[1,2,3,4,5,6,7,8,9,10] 
  a=Array.new(10)
  puts "Input array size : "
  size=gets
  puts "Input array elements" 
  for i in 0..size.to_i-1
     a[i]=gets
  end
  puts "Input the number to be searched : "
  num=gets
  i=0 
  j=size.to_i
  mid=(i+j)/2
 for i in 0..size.to_i-1
   if a[mid].to_i == num.to_i
    print num.to_s + " element found !"
    break
   elsif num.to_i > a[mid].to_i
    i=mid+1
   else
    j=mid
   end
    mid=(i+j)/2
  end
 end

end

a=Test.new
a.myfun
