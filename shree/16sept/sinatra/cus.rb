require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require "sinatra/base"

class Customer
   @@no_of_customers=0 

   def initialize(id, name, addr)
      @cust_id=id
      @cust_name=name
      @cust_addr=addr
   end

   def display_details()
    "Customer details : #@cust_id #@cust_name #@cust_addr"
    end
    
end

get '/cus' do
 cust1=Customer.new("1", "John", "chennai")
 return cust1.display_details()
end


