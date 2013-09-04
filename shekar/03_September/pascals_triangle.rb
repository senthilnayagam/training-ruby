#Program to print pascals triangle

(1..5).each do |i|
c=i/2
 (1..c).each do |l|
   print ""
 end
 (1..3).each do |k|
  print " "
 end
 (1..i).each do |j|
  print i.to_s + " "
 end 
 print "\n"
 l-=1
end

=begin
(0..2).each do |i|
 (0..i).each do |j|
  print "*"
  end
 print "\n"
end
=end

