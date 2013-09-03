

# ruby way for using Vignesh's code


a =[1,5,7,3,8]
 # to find 7

b = 7

a.each do |v| puts v end
  
  
a.each do |v,i| puts v if v == b end  
  


a.each_with_index do |v,i| puts v,i if v == b end  