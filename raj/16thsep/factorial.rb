require 'rubygems'
require 'bundler/setup'
require 'sinatra'

class Factorial
def fact(n)
  if n == 0
    return 1
  else
   return n * fact(n-1)
  end
end
end

get '/fact' do
f=Factorial.new
res=f.fact(10)
res
end
