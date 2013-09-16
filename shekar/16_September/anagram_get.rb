require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '~/training-ruby/shekar/16_September/anagram'

get '/get_input' do
   s="<html><body><form ><br><div align=\"/center\">"
   res=0
 
   #s+="Input first string  : <input type=\"/text\" name=\"/text1\"><br>"
   #s+="Input second string : <input type=\"/text\" name=\"/text2\"><br>"
   
   obj=Anagram.new
   s1=params[:text1]
   s2=params[:text2]
   res = obj.check_anagram(s1,s2)
 
   if res == 1
      s+="The strings #{s1} and #{s2} are anagrams.<br>"
   else
      s+="The strings #{s1} and #{s2} are not anagrams.<br>"
   end
   s+="</div><br><br><a href=\"anagram\">Back to previous page</a></form></center></body></html>"
  return s
end

get '/anagram' do  
  erb :anagram
end
