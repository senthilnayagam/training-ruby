class Roman

def convert(num)
 n=num
case num
when num.class=="Fixnum"
	if(num>0 && num<4000)

	thou=["","M","MM","MMM"]
	hund=["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"]
	ten=["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
	unit=["","I","II","III","IV","V","VI","VII","VIII","IX"]

	th=num/1000
	h=(num/100)%10
	t=(num/10)%10
	u=num%10

	return thou[th]+hund[h]+ten[t]+unit[u].strip
	else
	return "Invalid number\n"
	end
else
	return "Invalid data\n"
end
end

end
