#Program to check for prime number.
class Prime
    def check_prime(num)
        if num.class == "Fixnum"
	 c=0
         for i in 1..num
	 if (num % i) == 0
            c+=1	
	 end
	 end
	 if c==2
		return "True"
	 else
		return "False"
	 end
	else return "Invalid"
	end
    end
end
