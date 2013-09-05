require "test/unit"
require "./prime"

class TestPrime < Test::Unit::TestCase
 
  def test_conversion
    assert_equal('not prime',Prime.primecheck(25))
    assert_equal('prime',Prime.primecheck(19))
    assert_equal('not prime',Prime.primecheck(20))
    assert_equal('prime',Prime.primecheck(89))
end
    
   
def test_negative_scenarios
# 0

# sending a string instead of number

  end
 
end
