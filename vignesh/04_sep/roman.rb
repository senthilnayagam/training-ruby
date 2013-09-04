class Roman

#@number

a=gets

case a.to_i

when 1
  puts "It's I"
when 2
  puts "It's II"
when 3
  puts "It's III"
else
  puts "You gave me #{a} -- I have no idea what to do with that."
end

end
