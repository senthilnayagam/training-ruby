

class Roman
def self.convert(num)
  if(num>0 && num<4000)
  thou=["","M","MM","MMM"]
  hund=["","C","CC","CCC","CD","D","DC","DCC","DCCC","CM"]
  ten=["","X","XX","XXX","XL","L","LX","LXX","LXXX","XC"]
  unit=["","I","II","III","IV","V","VI","VII","VIII","IX"]
  th=num/1000
  h=(num/100)%10
  t=(num/10)%10
  u=num%10
  z=thou[th]+hund[h]+ten[t]+unit[u]
  z

end
end
end
