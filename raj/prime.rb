#Program to check the given number is prime or not

puts "Enter a number to check:"
n=gets.to_i
for i in 2..n/2
flag=0
  if n%i == 0

    puts "num is not a prime"
flag=1
   break
  
    puts "num is prime"
  
end

