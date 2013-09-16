require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'

class Anagram
 def check_anagram(s1,s2)
   s1=Array.new()
   s2=Array.new()
   isanag=0

   if(s1.length!=s2.length)
     return 0
   end
   for i in 0..s1.length-1
      isanag=0;
      for j in 0..s2.length-1
        if s1[i]==s2[j]
            isanag = 1
            break
	end
      end
      if isanag == 0
        return 0
      end
   end
   return 1
 end

 def check_anagram1(a,b)
   first=Array.new(26)
   second=Array.new(26)
   c = 0
   while a[c] != '\0'
      first[a[c]-'a']+=1;
      c+=1;
   end
   c = 0
   while b[c] != '\0'
      second[b[c]-'a']+=1;
      c+=1;
   end
   for c in 0..26
      if first[c] != second[c]
         return 0
      end
   end 
   return 1
 end
end
