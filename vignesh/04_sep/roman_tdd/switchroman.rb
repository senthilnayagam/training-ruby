class Roman

def convert

a=gets


case a.to_i



when 1
 puts "It's I"
when 2
  puts"It's II"
when 3
  puts"It's III"
when 4
puts"It's IV"
when 5
 puts"Its V"
when 6
puts"Its VI"
when 7
puts"Its VII"
when 8
puts"Its VIII"
when 9
puts"Its IX"
when 10
puts"Its X"

else
 puts "You gave me #{a} -- I have no idea what to do with that."

end

end
end
r=Roman.new
r.convert
