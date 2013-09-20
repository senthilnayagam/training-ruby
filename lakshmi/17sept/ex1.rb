require 'erb'
template = ERB.new %q{Chunky <%= food %>!}
food = "bacon"
puts template.result
food = "peanut butter"
puts template.result

