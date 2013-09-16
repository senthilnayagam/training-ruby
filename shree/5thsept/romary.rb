class Roman
def convert(number)
b=[0,1,2,3,4,5,6,7,8,9,10]
a= [' ','I','II','III','IV','V','VI','VII','VIII','IX','X']

for i in 1..10
if (number == b[i])
print a[i]+"\n"
end
end
end
end
r=Roman.new
r.convert(6)

