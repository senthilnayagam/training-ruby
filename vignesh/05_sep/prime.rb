class Prime_number


def get_value
 i = gets.to_i

 prime = true

 for counter in 2..(Math.sqrt(i)) do

 if i % counter == 0 then
 prime = false
 end

 end

 if prime then
 puts "True"
 else
 puts "False"
 end


end


end
a = Prime_number.new
a.get_value
