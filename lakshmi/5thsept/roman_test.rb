require "test/unit"
require "./roman"

class TestRoman < Test::Unit::TestCase
 
  def test_conversion
    assert_equal('CCXLIV',Roman.convert(244))
    assert_equal('MCMLXXXIX',Roman.convert(1989))
    
   
    assert_equal('MMXIII',Roman.convert(2013))
	
  end

  def test_negative_scenarios
# 0

# sending a string instead of number

  end
 
end
