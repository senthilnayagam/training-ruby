#Program to convert a number into Roman number.

a=Array.new
#puts "Input a number : "
#num=gets
i=0 
s=0 
n=100
while n > 0
 r=n%10
 s=r * (10**i)
 a[i]=s
 n=n/10
 i+=1
end
a=a.reverse
x=a.count
for i in 0..x
 l=Math.log10(a[i]) + 1
 case l
 when 4
       print "M"
 when 3
       for j in 1..9
       		if j==1 or j==2 or j==3
        		if a[i]==(100*j)
			j.times do
	  		print "C"
        		end
			end     
       		elsif j==4
			if a[i]==(100*j)
	  		print "CD"
        		end 
       		elsif j==5 or j==6 or j==7 or j==8 or j==9
			if a[i]==500
			print "D"
			end
          		if a[i]==900
			print "CM"
			end
        		for k in 1..3
			if a[i]==(100*j)          			
	  			if (a[i]-500)==k
            			print "D"
	    			k.times do
              			print "C"
	    			end
	  			end
        		end
			end
       		end
       end
 when 2
	case a[i]
	 when 10..30
	 	for p in 1..3
	   	 if a[i]==(p*10)
		  p.times do
		  print "X"
		  end
	   	 end
	 	end	 
	 when 40
	  print "XL"
	 when 50
	  print "L"
	end
 when 1
	case a[i]
	when 1
 	 print "I"
	when 2
	 print "II"
	when 3
	 print "III"
	when 4
	 print "IV"
	when 5
	 print "V"
	when 6
	 print "VI"
	when 7
	 print "VII"
	when 8
	 print "VIII"
	when 9
	 print "IX"
	when 10
	 print "X"
	end	
 end
end
=begin
b=Hash["1"=>"I","2"=>"II","3"=>"III","4"=>"IV","5"=>"V",
"6"=>"VI","7"=>"VII","8"=>"VIII","9"=>"IX","10"=>"X"]
=end
