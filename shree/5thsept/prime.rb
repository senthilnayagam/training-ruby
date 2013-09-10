class Prime
def self.prime?(n)
count=0
for i in 1..n
if((n%i)==0)
count+=1
end
end
if(count==2)
true
else
false
end
end
end
 
