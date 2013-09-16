#Code blocks passed in this way result in objects that have many methods of their own, such as
#call. Remember, almost everything in Ruby is an object!

def each_vowel(&code_block)
%w{a e i o u}.each { |vowel| code_block.call(vowel) }
end
each_vowel { |vowel| puts vowel }

