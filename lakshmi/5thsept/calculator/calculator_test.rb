require "test/unit"
require "./calculator"

class TestRoman < Test::Unit::TestCase
 
  def test_conversion
    assert_equal(25,Calculator.addition(24,1))
    assert_equal(14,Calculator.subtraction(55,41))
    assert_equal(64,Calculator.multiply(8,8))
    assert_equal(8,Calculator.divide(64,8))
    assert_equal('Denominator should not be zero',Calculator.divide(64,0))
end
    
   
def test_negative_scenarios
# 0

# sending a string instead of number

  end
 
end
