require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
require '~/training-ruby/shekar/16_September/employee'

get '/get_data' do
   s="<html><head><title>Rane Engine Valve Ltd</title></head><body><center><br><h3>REVL - Plant Engineering Dept</h3><br><hr><br><form><br><table border=\"1\" bgcolor=\"#F8F8F8\"><tr><th colspan=\"6\">QCC Team member data</th></tr>"
   s+="<tr><th>ID No</th><th>Name</th><th>Designation</th><th>Grade</th><th>QCC Team</th><th>QCC Expo</th></tr>"
   obj=Employee.new

   id=params[:id]
   name=params[:name]
   desig=params[:desig]
   grade=params[:grade]
   qcc_team=params[:qcc_team]
   qcc_expo=params[:qcc_expo]
   task=params[:task]

   if task.to_s == "select".to_s
     ds = obj.select(id)
     ds.each do |l|
       s= s +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
     end
     msg="Record found."
   elsif task=="insert"
     obj.insert(id,name,desig,grade,qcc_team,qcc_expo)
     ds = obj.select_all()
     ds.each do |l|
       s= s +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
     end
     msg="Record inserted."
   elsif task=="delete"
     obj.delete(id)
     ds = obj.select_all()
     ds.each do |l|
       s= s +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
     end
     msg="Record deleted."
   elsif task=="update"
     obj.update(id,name,desig,grade,qcc_team,qcc_expo)
     ds = obj.select_all()
     ds.each do |l|
       s= s +"<tr><td>"+ l.join("</td><td>") + "</td></tr>"
     end
     msg="Record updated."
   end
   s+="</table><br>"+msg.to_s+"<br><a href=\"/employee\">Back to home page</a></form></center></body></html>"
  return s
end

get '/employee' do  
  erb :employee1
end
