class Prime
def self.primecheck(num)
    flag=0
  #num=number/2
  for i in 1..num
    if(num%i==0)
      flag += 1
    end
  end
    if(flag==2)
     result='prime'
    else
     result='not prime'
    end 
result
end
end

	 
  
      
