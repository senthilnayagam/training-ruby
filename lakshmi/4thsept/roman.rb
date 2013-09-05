class Roman
def self.convert(input)


if(input>9)
romanv=romanv.to_s + 'X'
input = input -10
end
if(input>8)
romanv=romanv.to_s + 'IX'
input = input -9
end
if(input>4)
romanv=romanv.to_s + 'V'
input = input -5
end
if(input>3)
romanv=romanv.to_s + 'IV'
input = input - 4
end
while (input > 0 )
  romanv = romanv.to_s + "I"
  input = input - 1
end
romanv
end
end

=begin
case number
when 1
'I'
when 2
'II'
when 3
'III'
when 4
'IV'
when 5
'V'
when 6
'VI'
when 7
'VII'
when 8
'VIII'
when 9
'IX'
when 10
'X'
end
=end

