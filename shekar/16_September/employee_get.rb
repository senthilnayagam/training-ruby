require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '~/training-ruby/shekar/16_September/employee'

get '/get_input' do
   s="<html><body><form ><br><div align=\"/center\"><table>"
   res=0
    
   obj=Employee.new
   id=params[:id]
   name=params[:name]
   desig=params[:desig]
   grade=params[:grade]
   qcc_team=params[:qcc_team]
   qcc_expo=params[:qcc_expo]

   res = obj.select(id)

    ds.each do |l|
      s= s +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
    end
   s+="</table></div><br><br><a href=\"anagram\">Back to previous page</a></form></center></body></html>"
  return s
end

get '/employee' do  
  erb :employee
end
