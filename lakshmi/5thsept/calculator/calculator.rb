class Calculator

def self.addition(num1,num2)
  sum=num1+num2
  sum
end

def self.subtraction(num1,num2)
  sub=num1-num2
  sub
end

def self.multiply(num1,num2)
  mul=num1*num2
  mul
end

def self.divide(num1,num2)
if(num2==0)
  div= "Denominator should not be zero"
  div
else
  div=num1/num2
  div
end
end
end



