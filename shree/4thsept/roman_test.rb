require "test/unit"
require "./roman"

class TestRoman < Test::Unit::TestCase
 
  def test_conversion
    assert_equal('I', Roman.convert(1) )

  end


  def test_negative_scenarios
# 0

# sending a string instead of number

  end
 
end
