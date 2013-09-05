require "test/unit"
require "./roman"

class TestRoman < Test::Unit::TestCase
  def test_conversion
   assert_equal('I', Roman.convert(1) )
   #assert_equal('I',Roman.convert('a'))
   assert_equal('II',Roman.convert(2))
   assert_equal('III',Roman.convert(3))
   assert_equal("IV",Roman.convert(4))
   assert_equal("V",Roman.convert(5))
   assert_equal("VI",Roman.convert(6))
   assert_equal("VII",Roman.convert(7))
   assert_equal("VIII",Roman.convert(8))
   assert_equal("IX",Roman.convert(9))
   assert_equal("X",Roman.convert(10))
   assert_equal("XI",Roman.convert(11))
   assert_equal("XII",Roman.convert(12))
  end
end



