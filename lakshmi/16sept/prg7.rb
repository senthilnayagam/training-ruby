#An alternate technique is to use the yield method, which automatically detects any
#passed code block and passes control to it:


def each_vowel
%w{a e i o u}.each { |vowel| yield vowel }
end
each_vowel { |vowel| puts vowel }

