#Test program for prime number
require "test/unit"
require "./prime"

class Prime_Test < Test::Unit::TestCase
  def check_prime_no
   assert_equal("True", Prime.check_prime(1))
   assert_equal("True",Prime.check_prime(2))
   #assert_equal("False",Prime.check_prime(a))
   assert_equal("False",Prime.check_prime(4))
   assert_equal("False",Prime.check_prime(44))
   assert_equal("True",Prime.check_prime(44.44))
   assert_equal("Invalid",Prime.check_prime(hello))
  end
  def check_prime_no1
   
  end
end
