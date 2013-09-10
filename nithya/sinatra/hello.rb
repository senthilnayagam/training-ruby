require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'mysql'
get '/hi' do
  "Hello World!"
end

get '/time' do
Time.now.to_s
end

get '/hello' do
name = params[:name]
"hello "+name.to_s
end

get '/result/:roll_no' do
   db_conn = Mysql.new('localhost', 'root', 'root', 'Training')
   
result = "your result is"
params[:roll_no]
a = db_conn.query("select * from students where roll_no = #{params[:roll_no]}")
a.each_hash do |key, value|
result +=  key.to_s
result +=  value.to_s
end
result
end
