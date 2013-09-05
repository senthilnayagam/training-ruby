require "test/unit"
require "./rom3999"

class TestRoman3999 < Test::Unit::TestCase
 
  def test_conversion
    assert_equal('I', Roman3999.convert(1) )
    assert_equal('II', Roman3999.convert(2) )
    assert_equal('III', Roman3999.convert(3) )
    assert_equal('IV', Roman3999.convert(4) )
    assert_equal('V', Roman3999.convert(5) )
    assert_equal('VI', Roman3999.convert(6) )
    assert_equal('VII', Roman3999.convert(7) )
    assert_equal('VIII', Roman3999.convert(8) )
    assert_equal('IX', Roman3999.convert(9) )
    assert_equal('MMCMLXXXVII', Roman3999.convert(2987) )
  end


  def test_negative_scenarios
# 0

# sending a string instead of number

  end
 
end
