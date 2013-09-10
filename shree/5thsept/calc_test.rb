require "test/unit"
require "./calc.rb"

class Testcalc < Test::Unit::TestCase
 
  def test_conversion
    assert_equal(10, Calc.add(5,5) )
    assert_equal(3, Calc.sub(5,2) )
    assert_equal(4, Calc.mul(2,2) )
    assert_equal(2, Calc.div(8,4) )
    
    
  end
end
