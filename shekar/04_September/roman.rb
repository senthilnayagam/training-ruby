class Roman

def convert(number)
 case number
 when 1
  return "I"
 when 2
  return "II"
 when 3
  return "III"
 when 4
  return "IV"
 when 5
  return "V"
 else
  puts "You have entered an invalid number."
 end
end

end
