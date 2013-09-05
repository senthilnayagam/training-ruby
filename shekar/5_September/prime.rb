#Program to check for prime number.
class Prime
    def check_prime(num)
        if num.class == "Fixnum"
	 if (num % 2) == 0
 	  return "True"
	 else
 	  return "False"
	 end
	else return "Invalid"
	end
    end
end
