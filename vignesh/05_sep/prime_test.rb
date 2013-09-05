require "test/unit"
require "./prime"



class Testprime < Test::Unit::TestCase


def check_prime_no
   assert_equal("True", Prime.check_prime(7))
   assert_equal("True",Prime.check_prime(13))
   assert_equal("False",Prime.check_prime(10))
   assert_equal("False",Prime.check_prime(27))
   assert_equal("True",Prime.check_prime(29))
   assert_equal("Invalid",Prime.check_prime(abcd))
  end


end


