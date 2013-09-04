#Print 1 to 9 multiples
#print "Input a number : "
#n=gets
count=1
for i in 1..9
 print (count*i).to_s + " " 
 if count==9
  count +=1
  i=1
  print "\n"
  continue
 end
 if count>9
   break
 end
end
