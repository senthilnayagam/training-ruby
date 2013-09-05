require "test/unit"
require "./simplecalc"


class Testcalc < Test::Unit::TestCase
 
  def test_conversion
    assert_equal(20,Simplecalculator.addition(10,10))
    assert_equal(14,Simplecalculator.subtraction(20,10))
    assert_equal(64,Simplecalculator.multiply(5,5))
    assert_equal(8,Simplecalculator.divide(25,5))
    assert_equal('Den should not be zero',Simplecalculator.divide(10,0))
end
    
   
def test_negative_scenarios
# 0

# sending a string instead of number

  end
 
end
