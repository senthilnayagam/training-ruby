#Ruby code to implement therubyracer gem.
require 'rubygems'
require 'therubyracer'
require 'v8'

cxt = V8::Context.new
p cxt.eval('7 * 6') #=> 42
