#Program to convert milli seconds into hours,minutes and seconds
puts "Input time in milliseconds : "
ms=gets
hrs = ms.to_i / (1000*60*60)
min = (ms.to_i % (1000*60*60)) / (1000*60)
sec = ((ms.to_i % (1000*60*60)) % (1000*60)) / 1000
print "\n The time is : #{hrs}:#{min}:#{sec} \n"
