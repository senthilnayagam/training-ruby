require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '~/training-ruby/shekar/16_September/employee'

get '/get_data' do
   s="<html><body><form ><br><div align=\"/center\"><table>"

   obj=Employee.new

   id=params[:id]
   name=params[:name]
   desig=params[:desig]
   grade=params[:grade]
   qcc_team=params[:qcc_team]
   qcc_expo=params[:qcc_expo]
   task=params[:task]
   if task=="view"
     ds = obj.select(id)
     ds.each do |l|
       s= s +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
     end
   end
   s+="</table></div><br><br><a href=\"employee\">Back to home page</a></form></center></body></html>"
  return s
end

get '/employee' do  
  erb :employee
end
