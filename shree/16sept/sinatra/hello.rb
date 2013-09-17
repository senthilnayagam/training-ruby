require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require "sinatra/base"

class Example  
  def say_hello
    "Hello"
  end
end

get '/hello' do
ex=Example.new
ex.say_hello
 end


