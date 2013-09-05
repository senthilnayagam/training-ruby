#Test program for prime number
require "test/unit"
require "./prime"

class Prime_Test < Test::Unit::TestCase
  def check_prime
   assert_equal('True', Prime.check_prime(1) )
   #assert_equal('I',Roman.convert('a'))
   
  end
end
