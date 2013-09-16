require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Anagram
 def check_anagram(s1,s2)
   isanag=0

   if(s1.length!=s2.length)
     return 0
   end
   for i in 0..s1.length-1
      isanag=0
      for j in 0..s2.length-1
        if s1[i]==s2[j]
            isanag = 1
            return 1
            break
	end
      end
      if isanag == 0
        return 0
      end
   end
   #return 1 if isanag == 1
 end 
end
