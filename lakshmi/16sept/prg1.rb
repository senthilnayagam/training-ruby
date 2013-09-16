require 'rubygems'
require 'bundler/setup'
require 'sinatra'

class Sample

def initialize(name,id,salary)
@name=name
@id=id
@salary=salary
end

def display()
 @name+" id is "+@id.to_s + " and his salary is "+ @salary.to_s
end

end

get '/name' do
s=Sample.new("JOHN",10,10000)
s.display()
end


